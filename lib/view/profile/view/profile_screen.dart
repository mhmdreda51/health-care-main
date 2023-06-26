// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/profile/cubit/profile_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../models/profile_model.dart';
import '../../../widgets/app_text_form_field.dart';
import '../../home/view/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
    this.profileModel,
  }) : super(key: key);
  final ProfileModel? profileModel;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController disaeseTypeController = TextEditingController();
  TextEditingController disaeseDiscController = TextEditingController();
  @override
  void initState() {
    ageController.text = widget.profileModel?.results?[0].age.toString() ?? "";
    firstNameController.text = widget.profileModel?.results?[0].firstName ?? "";
    lastNameController.text = widget.profileModel?.results?[0].lastName ?? "";
    phoneNumberController.text =
        widget.profileModel?.results?[0].phoneNumber ?? "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()..initProfleScreen(),
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
                        key: profileFormKey,
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
                                type: TextInputType.text,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value.trim().length < 4) {
                                    return 'Username must be at least 4 characters in length';
                                  }
                                  return null;
                                },
                                controller: firstNameController,
                                hintText: "First Name",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                type: TextInputType.text,
                                icon: Icons.person,
                                validator: (value) {
                                  if (value.trim().length < 4) {
                                    return 'Username must be at least 4 characters in length';
                                  }
                                  return null;
                                },
                                controller: lastNameController,
                                hintText: "Last Name",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                type: TextInputType.number,
                                icon: Icons.person,
                                validator: (value) {},
                                controller: ageController,
                                hintText: "Age",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 20),
                              AppTextFormField(
                                maxLines: 1,
                                icon: Icons.phone,
                                type: TextInputType.number,
                                validator: (value) {
                                  String pattern = r'(^[0-9]*$)';
                                  RegExp regExp = RegExp(pattern);
                                  if (value.length != 11) {
                                    return "Phone number must be 11 digits";
                                  } else if (!regExp.hasMatch(value)) {
                                    return "Phone number must be 11 digits";
                                  }
                                  return null;
                                },
                                controller: phoneNumberController,
                                hintText: "Phone Number",
                                iconColor: Colors.blue,
                              ),
                              const SizedBox(height: 50),
                              MainButton(
                                borderRadius: 35,
                                height: 50,
                                onPressed: () {
                                  cubit.userimage != null
                                      ? cubit.editUserProfile(
                                          image: File(
                                            cubit.userimage?.path ?? "",
                                          ),
                                          firstName:
                                              firstNameController.text == ""
                                                  ? null
                                                  : firstNameController.text,
                                          lastName:
                                              lastNameController.text == ""
                                                  ? null
                                                  : lastNameController.text,
                                          age: ageController.text == ""
                                              ? null
                                              : ageController.text,
                                          phoneNum:
                                              phoneNumberController.text == ""
                                                  ? null
                                                  : phoneNumberController.text,
                                          userId: widget.profileModel
                                                  ?.results?[0].id ??
                                              0,
                                        )
                                      : cubit.editUserProfile(
                                          firstName:
                                              firstNameController.text == ""
                                                  ? null
                                                  : firstNameController.text,
                                          lastName:
                                              lastNameController.text == ""
                                                  ? null
                                                  : lastNameController.text,
                                          age: ageController.text == ""
                                              ? null
                                              : ageController.text,
                                          phoneNum:
                                              phoneNumberController.text == ""
                                                  ? null
                                                  : phoneNumberController.text,
                                          userId: widget.profileModel
                                                  ?.results?[0].id ??
                                              0,
                                        );
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
