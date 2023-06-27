import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/app_colors.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/nurses/cubit/nurses_cubit.dart';
import '../../../constants/Strins.dart';
import '../../../data/nurses_apis.dart';
import '../../../widgets/main_drop_down.dart';
import 'nurses_details_screen.dart';

class NurseScreen extends StatelessWidget {
  const NurseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NursesCubit()
        ..getAllDoctorsCities()
        ..getAllSpecialty(),
      child: BlocConsumer<NursesCubit, NursesState>(
        listener: (context, state) {
          final cubit = NursesCubit.get(context);

          if (state is GetNursesSearchSuccess) {
            cubit.cityId = null;
            cubit.specialtyId = null;
          }
        },
        builder: (context, state) {
          final cubit = NursesCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Nurses"),
            ),
            body: state is GetNursesCitiesLoading ||
                    state is GetNursesSpecialtyLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : FutureBuilder(
                    future: NursesApis().getNursesWithSpecialtyIdAndCityId(
                      cityId: cubit.cityId,
                      specialtyId: cubit.specialtyId,
                    ),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data?.results;
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              MainDropDown(
                                label: "Cities",
                                list: cubit.citiesModel?.results
                                        ?.map((e) => e.name ?? "")
                                        .toList() ??
                                    [],
                                onChanged: (val) {
                                  cubit.selectCityId(
                                      (cubit.citiesModel?.results?.indexWhere(
                                                (element) =>
                                                    element.name == val,
                                              ) ??
                                              0) +
                                          1);
                                },
                              ),
                              const SizedBox(height: 20),
                              MainDropDown(
                                label: "Specialty",
                                list: cubit.specialtyModel?.results
                                        ?.map((e) => e.name ?? "")
                                        .toList() ??
                                    [],
                                onChanged: (val) {
                                  cubit.selectspecialtyId((cubit
                                              .specialtyModel?.results
                                              ?.indexWhere(
                                            (element) => element.name == val,
                                          ) ??
                                          0) +
                                      1);
                                },
                              ),
                              const SizedBox(height: 20),
                              const SizedBox(height: 20),
                              Expanded(
                                child: ListView.separated(
                                  itemCount: data?.length ?? 0,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 15),
                                  itemBuilder: (context, index) {
                                    final item = data?[index];
                                    return GestureDetector(
                                      onTap: () {
                                        MagicRouter.navigateTo(
                                            NursesDetailsScreen(
                                          cubit: cubit,
                                          item: item,
                                        ));
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
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
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(15),
                                                ),
                                                child: Image.network(
                                                  item?.hisPhoto ?? dummyImage,
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
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.deepBlue,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    item?.hisHospital ?? "",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.deepBlue,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    item?.hisSpecialty?.name ??
                                                        "",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
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
                        );
                      } else {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      }
                    },
                  ),
          );
        },
      ),
    );
  }
}
