// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/home/cubit/doctor_screen_cubit.dart';

import '../../../widgets/custom_text_field.dart';
import '../../../widgets/main_button.dart';
import 'home_screen.dart';

class AddHistoryDataScreen extends StatelessWidget {
  const AddHistoryDataScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {
        if (state is CreateMedicalSuccessState) {
          MagicRouter.navigateAndPopAll(const HomeScreen());
        }
      },
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Add History Data"),
          ),
          body: state is CreateMedicalLoadingState
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: cubit.medicalFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("illnesses numbers"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "illnesses numbers",
                            keyboardType: TextInputType.number,
                            controller: cubit.illnessNunController,
                          ),
                          const SizedBox(height: 20),
                          const Text("illnesses"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "illnesses",
                            keyboardType: TextInputType.text,
                            controller: cubit.illnessController,
                          ),
                          const SizedBox(height: 20),
                          const Text("illnesses descriptions"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "illnesses descriptions",
                            keyboardType: TextInputType.text,
                            maxLines: 4,
                            controller: cubit.illnessDiscController,
                          ),
                          const SizedBox(height: 20),
                          const Text("allergies"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "allergies",
                            keyboardType: TextInputType.text,
                            controller: cubit.allergiesController,
                          ),
                          const SizedBox(height: 20),
                          const Text("surgeries"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "surgeries",
                            keyboardType: TextInputType.text,
                            controller: cubit.surgeriesController,
                          ),
                          const SizedBox(height: 20),
                          const Text("immunizations"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "immunizations",
                            keyboardType: TextInputType.text,
                            controller: cubit.immunizationsController,
                          ),
                          const SizedBox(height: 20),
                          const Text("results of physical exams and tests"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "results of physical exams and tests",
                            keyboardType: TextInputType.text,
                            controller: cubit
                                .results_of_physical_exams_and_testsController,
                          ),
                          const SizedBox(height: 20),
                          const Text("medicines"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "medicines",
                            keyboardType: TextInputType.text,
                            controller: cubit.medicinesController,
                          ),
                          const SizedBox(height: 20),
                          const Text("medical rays"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "medical rays",
                            keyboardType: TextInputType.text,
                            controller: cubit.medical_raysController,
                          ),
                          const SizedBox(height: 20),
                          const Text("health habits"),
                          const SizedBox(height: 12),
                          CustomTextFormField(
                            hintText: "health habits",
                            keyboardType: TextInputType.text,
                            controller: cubit.health_habitsController,
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              cubit.pickTestsFromGallery();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    blurRadius: 15,
                                    offset: const Offset(0, 1),
                                  )
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.medication),
                                  Text("physical exams and tests images"),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              cubit.pickmedicinesFromGallery();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    blurRadius: 15,
                                    offset: const Offset(0, 1),
                                  )
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.medication),
                                  Text("Add Your medicines"),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              cubit.pickXrayFromGallery();
                            },
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.4),
                                    blurRadius: 15,
                                    offset: const Offset(0, 1),
                                  )
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.medication),
                                  Text("Add Your XRay"),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          Center(
                            child: MainButton(
                              borderRadius: 35,
                              height: 50,
                              onPressed: () {
                                if (cubit.medicalFormKey.currentState!
                                        .validate() &&
                                    cubit.tests != null &&
                                    cubit.xray != null &&
                                    cubit.medicines != null) {
                                  cubit.createMedicalHostory(
                                    id: id,
                                    illnesses_numbers:
                                        cubit.illnessNunController.text,
                                    illnesses: cubit.illnessController.text,
                                    illnesses_descriptions:
                                        cubit.illnessDiscController.text,
                                    allergies: cubit.allergiesController.text,
                                    surgeries: cubit.surgeriesController.text,
                                    immunizations:
                                        cubit.immunizationsController.text,
                                    results_of_physical_exams_and_tests: cubit
                                        .results_of_physical_exams_and_testsController
                                        .text,
                                    physical_exams_and_tests_images:
                                        cubit.tests!,
                                    medicines: cubit.medicinesController.text,
                                    medicines_images: cubit.medicines!,
                                    medical_rays:
                                        cubit.medical_raysController.text,
                                    medical_rays_images: cubit.medicines!,
                                    health_habits:
                                        cubit.health_habitsController.text,
                                  );
                                }
                              },
                              text: "Save",
                              width: MediaQuery.of(context).size.width / 1.5,
                            ),
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
