import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/app_colors.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/nurses/cubit/nurses_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/main_drop_down.dart';
import 'nurses_details_screen.dart';

class NurseScreen extends StatelessWidget {
  const NurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NursesCubit()
        ..getAllNurses()
        ..getAllDoctorsCities()
        ..getAllSpecialty(),
      child: BlocConsumer<NursesCubit, NursesState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = NursesCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Nurses"),
            ),
            body: state is GetNursesCitiesLoading ||
                    state is GetNursesCitiesLoading ||
                    state is GetNursesSpecialtyLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        MainDropDown(
                          label: "Cities",
                          list: cubit.citiesModel?.results
                                  ?.map((e) => e.name ?? "")
                                  .toList() ??
                              [],
                          onChanged: (val) {},
                        ),
                        const SizedBox(height: 20),
                        MainDropDown(
                          label: "Specialty",
                          list: cubit.specialtyModel?.results
                                  ?.map((e) => e.name ?? "")
                                  .toList() ??
                              [],
                          onChanged: (val) {},
                        ),
                        const SizedBox(height: 20),
                        MainButton(
                          onPressed: () {},
                          height: 50,
                          width: MediaQuery.of(context).size.width - 200,
                          text: "Search",
                          borderRadius: 25,
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.separated(
                            itemCount: cubit.nursesModel?.results?.length ?? 0,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 15),
                            itemBuilder: (context, index) {
                              final item = cubit.nursesModel?.results?[index];
                              return GestureDetector(
                                onTap: () {
                                  MagicRouter.navigateTo(NursesDetailsScreen(
                                    item: item,
                                  ));
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: AppColors.deepBlue,
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item?.hisName ?? "",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.deepBlue,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              item?.hisHospital ?? "",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.deepBlue,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              item?.hisSpecialty?.name ?? "",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.deepBlue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
