import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/Strins.dart';
import 'package:health_care/core/router/router.dart';

import '../cubit/doctor_screen_cubit.dart';
import 'diseases_item_details_screen.dart';

class DiseasesScreen extends StatelessWidget {
  const DiseasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("Disease Knowledge"),
          ),
          body: state is GetDiseasesLoadingState
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemCount: cubit.diseasesModel?.results?.length ?? 0,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    var des = cubit.diseasesModel?.results?[index];
                    return GestureDetector(
                      onTap: () {
                        MagicRouter.navigateTo(
                          DiseasesItemDetailsScreen(
                            desciption: des?.desciption ?? "",
                            title: des?.name ?? "",
                            treatment: des?.treatment ?? "",
                            photo: des?.itsPhoto ?? dummyImage,
                          ),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              des?.itsPhoto ?? dummyImage,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          color: Colors.white,
                          child: Text(
                            des?.name ?? "",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}
