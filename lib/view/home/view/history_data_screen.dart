import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/home/cubit/doctor_screen_cubit.dart';

import '../../../widgets/custom_text_field.dart';
import '../../../widgets/main_button.dart';

class HistoryDataScreen extends StatelessWidget {
  const HistoryDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("History Data"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("illnesses numbers"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "illnesses numbers",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("illnesses"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "illnesses",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("illnesses descriptions"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "illnesses descriptions",
                    keyboardType: TextInputType.text,
                    maxLines: 4,
                  ),
                  const SizedBox(height: 20),
                  const Text("allergies"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "allergies",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("surgeries"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "surgeries",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("immunizations"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "immunizations",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("results of physical exams and tests"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "results of physical exams and tests",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("medicines"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "medicines",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("medical rays"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "medical rays",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  const Text("health habits"),
                  const SizedBox(height: 12),
                  const CustomTextFormField(
                    hintText: "health habits",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      cubit.pickImageFromGallery();
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
                      cubit.pickImageFromGallery();
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
                      cubit.pickImageFromGallery();
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
                      onPressed: () {},
                      text: "Save",
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
