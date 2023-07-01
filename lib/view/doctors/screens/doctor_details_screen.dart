// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/doctors/cubit/cubit/doctor_cubit.dart';

import '../../../constants/Strins.dart';
import '../../../models/doctor_model.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({
    Key? key,
    this.item,
    required this.cubit,
  }) : super(key: key);
  final Results? item;
  final DoctorCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => MagicRouter.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 40,
            child: Image.network(
              item?.hisPhoto ?? dummyImage,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 60,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          item?.hisName ?? "",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item?.hisSpecialty?.name ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Age :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisAge.toString() ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Gender :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisSex ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Address :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisGovernorate?.name ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Clinic Name :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisClinicName ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Clinic location :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisClinicLocation ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Clinic Price :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "${item?.hisClinicPrice.toString() ?? ""}\$",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Clinic start time :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "${item?.hisClinicStartAt.toString() ?? ""} PM",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Clinic End time :",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "${item?.hisClinicFinshAt.toString() ?? ""} PM",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Phone Number:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisNumberForConnect ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        "Email Address",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item?.hisEmailForConnect ?? "",
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            cubit
                                .makePhoneCall(item?.hisNumberForConnect ?? "");
                          },
                          icon: const Icon(
                            Icons.call,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            cubit.goToGoogleMaps(item?.hisCity?.name ?? "");
                          },
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            cubit
                                .makePhoneChat(item?.hisNumberForConnect ?? "");
                          },
                          icon: const Icon(
                            Icons.message,
                            color: Colors.blueAccent,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
