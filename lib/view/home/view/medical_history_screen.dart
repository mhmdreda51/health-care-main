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
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                                  data?.illnessesNumbers.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  (data?.illnesses.toString() ?? ""),
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.illnessesDescriptions.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.allergies.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.surgeries.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.immunizations.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.resultsOfPhysicalExamsAndTests
                                          .toString() ??
                                      "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.medicines.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.medicalRays.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
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
                                  data?.healthHabits.toString() ?? "",
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "physical Exams And Tests Images : ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              data?.physicalExamsAndTestsImages ?? dummyImage,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "medicines Images : ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              data?.medicalRaysImages ?? dummyImage,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "medical Rays Images : ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ClipRRect(
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
