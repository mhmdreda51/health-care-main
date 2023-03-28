import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/home/cubit/doctor_screen_cubit.dart';

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
                  const Text("Disease Type"),
                  const SizedBox(height: 12),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }

                      return null;
                    },
                    controller: TextEditingController(),
                    decoration: const InputDecoration(hintText: "Disease Type"),
                  ),
                  const SizedBox(height: 20),
                  const Text("Disease Description"),
                  const SizedBox(height: 12),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }

                      return null;
                    },
                    controller: TextEditingController(),
                    decoration: const InputDecoration(hintText: "Disease Type"),
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
