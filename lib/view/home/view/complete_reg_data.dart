// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/home/cubit/doctor_screen_cubit.dart';
import 'package:health_care/view/home/view/home_screen.dart';

import '../../../widgets/app_text_form_field.dart';
import '../../../widgets/main_button.dart';

class CompleteRegisterData extends StatelessWidget {
  const CompleteRegisterData({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {
        if (state is EditUserProfileSuccess) {
          MagicRouter.navigateAndPopAll(const HomeScreen());
        }
        if (state is EditUserProfileError) {
          BotToast.showText(text: state.msg);
        }
      },
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(title: const Text("Complete Data")),
          body: state is EditUserProfileLoading
              ? const Center(child: CircularProgressIndicator.adaptive())
              : Form(
                  key: cubit.profileFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
                                            "assets/images/doctor.jpg",
                                          )
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
                            type: TextInputType.text,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Must not be empty";
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
                            type: TextInputType.text,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Must not be empty";
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
                            type: TextInputType.number,
                            validator: (value) {
                              if (value.isEmpty) {
                                return "Must not be empty";
                              }
                            },
                            controller: cubit.ageController,
                            hintText: "Age",
                            iconColor: Colors.blue,
                          ),
                          const SizedBox(height: 20),
                          AppTextFormField(
                            maxLines: 1,
                            icon: Icons.phone,
                            type: TextInputType.number,
                            validator: (String value) {
                              String pattern = r'(^[0-9]*$)';
                              RegExp regExp = RegExp(pattern);
                              if (value.isEmpty) {
                                return "Must not be empty";
                              }
                              if (value.length != 11) {
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
                                  image: File(
                                    cubit.userimage?.path ?? "",
                                  ),
                                  firstName:
                                      cubit.firstNameController.text == ""
                                          ? null
                                          : cubit.firstNameController.text,
                                  lastName: cubit.lastNameController.text == ""
                                      ? null
                                      : cubit.lastNameController.text,
                                  age: cubit.ageController.text == ""
                                      ? null
                                      : cubit.ageController.text,
                                  phoneNum:
                                      cubit.phoneNumberController.text == ""
                                          ? null
                                          : cubit.phoneNumberController.text,
                                  userId: id,
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
        );
      },
    );
  }
}
