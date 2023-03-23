import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/app_colors.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/doctors/cubit/cubit/doctor_cubit.dart';
import 'package:health_care/widgets/main_button.dart';

import '../../../widgets/main_drop_down.dart';
import 'doctor_details_screen.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit()
        ..getAllDoctors()
        ..getAllDoctorsCities()
        ..getAllSpecialty(),
      child: BlocConsumer<DoctorCubit, DoctorState>(
        listener: (context, state) {
          final cubit = DoctorCubit.get(context);

          if (state is GetDoctorsSearchSuccess) {
            cubit.cityId = null;
            cubit.specialtyId = null;
          }
        },
        builder: (context, state) {
          final cubit = DoctorCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("Doctors"),
            ),
            body: state is GetDoctorsLoading ||
                    state is GetDoctoresCitiesLoading ||
                    state is GetDoctoresSpecialtyLoading ||
                    state is GetDoctorsSearchLoading
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
                          onChanged: (val) {
                            cubit.selectCityId(
                              cubit.citiesModel?.results?.indexWhere(
                                    (element) => element.name == val,
                                  ) ??
                                  0,
                            );
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
                            cubit.selectCityId(
                              cubit.specialtyModel?.results?.indexWhere(
                                    (element) => element.name == val,
                                  ) ??
                                  0,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        MainButton(
                          onPressed: () {
                            if (cubit.cityId != null ||
                                cubit.specialtyId != null) {
                              cubit.getAllSearchDoctors(
                                cityId: (cubit.cityId ?? 0) + 1,
                                specialtyId: (cubit.specialtyId ?? 0) + 1,
                              );
                            }
                          },
                          height: 50,
                          width: MediaQuery.of(context).size.width - 200,
                          text: "Search",
                          borderRadius: 25,
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.separated(
                            itemCount: cubit.doctorModel?.results?.length ?? 0,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 15),
                            itemBuilder: (context, index) {
                              final item = cubit.doctorModel?.results?[index];
                              return GestureDetector(
                                onTap: () {
                                  MagicRouter.navigateTo(DoctorDetailsScreen(
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
                                              item?.hisSpecialty?.name ?? "",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.deepBlue,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              item?.hisClinicLocation ?? "",
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
