import 'package:flutter/material.dart';
import 'package:health_care/constants/app_colors.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/main_drop_down.dart';

class NurseScreen extends StatelessWidget {
  const NurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Nurses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            MainDropDown(
              label: "Cities",
              list: const [],
              onChanged: (val) {},
            ),
            const SizedBox(height: 20),
            MainDropDown(
              label: "Specialty",
              list: const [],
              onChanged: (val) {},
            ),
            const SizedBox(height: 20),
            MainButton(
              onPressed: () {},
              height: 50,
              width: MediaQuery.of(context).size.width -200,
              text: "Search",
              borderRadius: 25,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColors.deepBlue,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/images/doctor.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "سلمي",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deepBlue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "مستشفي ميت غمر",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deepBlue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "4.1",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.deepBlue,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
