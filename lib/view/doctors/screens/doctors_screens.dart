import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/Strins.dart';
import 'package:health_care/constants/app_colors.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/doctors/cubit/cubit/doctor_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../data/doctor_apis.dart';
import '../../../widgets/main_drop_down.dart';
import 'doctor_details_screen.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit()
        ..getAllDoctorsCities()
        ..getAllSpecialty(),
      child: BlocConsumer<DoctorCubit, DoctorState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = DoctorCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Doctors"),
            ),
            body: state is GetDoctoresCitiesLoading ||
                    state is GetDoctoresSpecialtyLoading
                ? const Center(child: CircularProgressIndicator.adaptive())
                : FutureBuilder(
                    future: DoctorsApis().getDoctorsWithSpecialtyIdAndCityId(
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
                                value: cubit.city,
                                label: "Cities",
                                list: cubit.citiesModel?.results
                                        ?.map((e) => e.name ?? "")
                                        .toList() ??
                                    [],
                                onChanged: (val) {
                                  cubit.selectCityId(
                                    (cubit.citiesModel?.results?.indexWhere(
                                              (element) => element.name == val,
                                            ) ??
                                            0) +
                                        1,
                                    val,
                                  );
                                },
                              ),
                              const SizedBox(height: 20),
                              MainDropDown(
                                value: cubit.specialt,
                                label: "Specialty",
                                list: cubit.specialtyModel?.results
                                        ?.map((e) => e.name ?? "")
                                        .toList() ??
                                    [],
                                onChanged: (val) {
                                  cubit.selectspecialtyId(
                                    (cubit.specialtyModel?.results?.indexWhere(
                                              (element) => element.name == val,
                                            ) ??
                                            0) +
                                        1,
                                    val,
                                  );
                                },
                              ),
                              cubit.cityId != null || cubit.specialtyId != null
                                  ? Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        MainButton(
                                          onPressed: () {
                                            cubit.clearSearchData();
                                          },
                                          height: 59,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2,
                                          text: "clear search",
                                          borderRadius: 25,
                                        ),
                                      ],
                                    )
                                  : const SizedBox(),
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
                                          DoctorDetailsScreen(
                                            item: item,
                                            cubit: cubit,
                                          ),
                                        );
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
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
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
                                                    item?.hisSpecialty?.name ??
                                                        "",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.deepBlue,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    item?.hisClinicLocation ??
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
                    }),
          );
        },
      ),
    );
  }
}
