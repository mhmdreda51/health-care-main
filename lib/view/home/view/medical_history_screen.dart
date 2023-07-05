// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/Strins.dart';

import 'package:health_care/core/router/router.dart';
import 'package:health_care/data/home_apis.dart';

import '../../../models/medical_history_model.dart';
import '../cubit/doctor_screen_cubit.dart';
import 'history_data_screen.dart';

class MedicalHistoryScreen extends StatelessWidget {
  const MedicalHistoryScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Medical History"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  MagicRouter.navigateTo(
                    BlocProvider.value(
                      value: cubit,
                      child: AddHistoryDataScreen(id: id),
                    ),
                  );
                },
                icon: const Text("Add"),
              )
            ],
          ),
          body: FutureBuilder<MedicalHistory?>(
              future: HomeApis().getMedicalHistory(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  Results? data = snapshot.data?.results?[0];
                  if (data?.illnessesNumbers == null &&
                      data?.allergies == null &&
                      data?.healthHabits == null &&
                      data?.illnesses == null &&
                      data?.illnessesDescriptions == null &&
                      data?.immunizations == null &&
                      data?.medicalRays == null &&
                      data?.medicalRaysImages == null &&
                      data?.medicines == null &&
                      data?.medicinesImages == null &&
                      data?.physicalExamsAndTestsImages == null &&
                      data?.resultsOfPhysicalExamsAndTests == null &&
                      data?.surgeries == null) {
                    return GestureDetector(
                      onTap: () {
                        MagicRouter.navigateTo(
                          BlocProvider.value(
                            value: cubit,
                            child: AddHistoryDataScreen(id: id),
                          ),
                        );
                      },
                      child: const Center(
                        child: Text(
                          "Please Enter your data",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            data?.illnessesNumbers == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "illnesses Numbers : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          "${data?.illnessesNumbers ?? ""}",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.illnessesNumbers == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.illnesses == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "illnesses : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          (data?.illnesses ?? ""),
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.illnesses == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.illnessesDescriptions == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "illnesses descriptions : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.illnessesDescriptions ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.illnessesDescriptions == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.allergies == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "allergies : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.allergies ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.allergies == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.surgeries == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "surgeries : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.surgeries ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.surgeries == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.immunizations == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "immunizations : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.immunizations ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.immunizations == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.resultsOfPhysicalExamsAndTests == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "results of physical exams and tests : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.resultsOfPhysicalExamsAndTests ??
                                              "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.resultsOfPhysicalExamsAndTests == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.medicines == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "medicines : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.medicines ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.medicines == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.medicalRays == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "medical rays : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.medicalRays ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.medicalRays == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.healthHabits == null
                                ? const SizedBox()
                                : Row(
                                    children: [
                                      const Text(
                                        "health habits : ",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Expanded(
                                        child: Text(
                                          data?.healthHabits ?? "",
                                          maxLines: 5,
                                        ),
                                      ),
                                    ],
                                  ),
                            data?.physicalExamsAndTestsImages == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.physicalExamsAndTestsImages == null
                                ? const SizedBox()
                                : const Text(
                                    "physical Exams And Tests Images : ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                            data?.physicalExamsAndTestsImages == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.physicalExamsAndTestsImages == null
                                ? const SizedBox()
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      data?.physicalExamsAndTestsImages ??
                                          dummyImage,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                            const SizedBox(height: 12),
                            data?.medicalRaysImages == null
                                ? const SizedBox()
                                : const Text(
                                    "medicines Images : ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                            data?.medicinesImages == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.medicinesImages == null
                                ? const SizedBox()
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      data?.medicinesImages ?? dummyImage,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                            data?.medicalRaysImages == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.medicalRaysImages == null
                                ? const SizedBox()
                                : const Text(
                                    "medical Rays Images : ",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                            data?.medicalRaysImages == null
                                ? const SizedBox()
                                : const SizedBox(height: 12),
                            data?.medicalRaysImages == null
                                ? const SizedBox()
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.network(
                                      data?.medicalRaysImages ?? dummyImage,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    );
                  }
                } else {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
              }),
        );
      },
    );
  }
}
