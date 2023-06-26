import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';

import '../../../widgets/app_text_form_field.dart';
import '../../../widgets/auth_text_form_field.dart';
import '../../../widgets/main_button.dart';

import '../../forget_password/view/forget_password_screen.dart';

import '../../home/view/home_screen.dart';
import '../../register/view/register_screen.dart';
import '../cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            MagicRouter.navigateAndPopAll(const HomeScreen());
          }
        },
        builder: (context, state) {
          final cubit = LoginCubit.get(context);

          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: cubit.loginFormKey,
                  child: state is LoginLoadingState
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/images/doctor.jpg"),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              AppTextFormField(
                                                      type: TextInputType.text,

                                maxLines: 1,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value!.isEmpty || value.length < 5) {
                                    return "Username must be at least 5 characters";
                                  }
                                  return null;
                                },
                                controller: cubit.userNameController,
                                hintText: "Username",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 30),
                              AuthTextFromField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'password must not be empty';
                                  } else if (value.length < 4) {
                                    return 'password must be at least 8 characters';
                                  } else {
                                    return null;
                                  }
                                },
                                onChanged: (value) {},
                                controller: cubit.passwordController,
                                obscureText: cubit.isPassword,
                                hintText: "Password",
                                icon: cubit.suffix,
                                onPressed: cubit.changePasswordVisibility,
                                iconColor: Colors.blue.withOpacity(.7),
                              ),
                              const SizedBox(height: 30),
                              GestureDetector(
                                onTap: () {
                                  MagicRouter.navigateTo(
                                      const ForgetPasswordScreen());
                                },
                                child: const Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forget Password ?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 50),
                              MainButton(
                                borderRadius: 35,
                                height: 50,
                                onPressed: () {
                                  if (cubit.loginFormKey.currentState!
                                      .validate()) {
                                    cubit.login(
                                      userName: cubit.userNameController.text,
                                      password: cubit.passwordController.text,
                                    );
                                  }
                                },
                                text: "login",
                                width: MediaQuery.of(context).size.width / 1.5,
                              ),
                              const SizedBox(height: 50),
                              GestureDetector(
                                onTap: () {
                                  MagicRouter.navigateTo(
                                      const RegisterScreen());
                                },
                                child: const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Dont have account ?  Sign up",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
