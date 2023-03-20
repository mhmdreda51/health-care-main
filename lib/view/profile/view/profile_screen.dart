import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';

import 'package:health_care/view/profile/cubit/profile_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/app_text_form_field.dart';
import '../../home/view/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);
  final int userId;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: BlocConsumer<ProfileCubit, ProfileState>(
        listener: (context, state) {
          if (state is EditUserProfileSuccess) {
            MagicRouter.navigateAndPopAll(const HomeScreen());
          }
        },
        builder: (context, state) {
          final cubit = ProfileCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text("Update Profile"),
            ),
            backgroundColor: Colors.white,
            body: state is EditUserProfileLoading
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: cubit.profileFormKey,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: cubit.userimage == null
                                            ? const AssetImage(
                                                "assets/images/doctor.jpg")
                                            : FileImage(
                                                File(
                                                  cubit.userimage?.path ?? "",
                                                ),
                                              ) as ImageProvider,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    child: GestureDetector(
                                      onTap: () {
                                        cubit.pickImageFromGallery();
                                      },
                                      child: const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 30,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'This field is required';
                                  }
                                  if (value.trim().length < 4) {
                                    return 'Username must be at least 4 characters in length';
                                  }
                                  return null;
                                },
                                controller: cubit.firstNameController,
                                hintText: "First Name",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'This field is required';
                                  }
                                  if (value.trim().length < 4) {
                                    return 'Username must be at least 4 characters in length';
                                  }
                                  return null;
                                },
                                controller: cubit.lastNameController,
                                hintText: "Last Name",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'This field is required';
                                  }

                                  return null;
                                },
                                controller: cubit.ageController,
                                hintText: "Age",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                icon: Icons.phone,
                                validator: (value) {
                                  String pattern = r'(^[0-9]*$)';
                                  RegExp regExp = RegExp(pattern);
                                  if (value == null || value.trim().isEmpty) {
                                    return "Phone must not be empty";
                                  } else if (value.length != 11) {
                                    return "Phone number must be 11 digits";
                                  } else if (!regExp.hasMatch(value)) {
                                    return "Phone number must be 11 digits";
                                  }
                                  return null;
                                },
                                controller: cubit.phoneNumberController,
                                hintText: "Phone Number",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 50),
                              MainButton(
                                borderRadius: 35,
                                height: 50,
                                onPressed: () {
                                  if (cubit.profileFormKey.currentState!
                                          .validate() &&
                                      cubit.userimage != null) {
                                    cubit.editUserProfile(
                                      image: File(cubit.userimage?.path ?? ""),
                                      firstName: cubit.firstNameController.text,
                                      lastName: cubit.lastNameController.text,
                                      age: cubit.ageController.text,
                                      phoneNum:
                                          cubit.phoneNumberController.text,
                                      userId: userId ,
                                    );
                                  }
                                },
                                text: "Save",
                                width: MediaQuery.of(context).size.width / 1.5,
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
