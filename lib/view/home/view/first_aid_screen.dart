import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/Strins.dart';

import '../../../core/router/router.dart';
import '../cubit/doctor_screen_cubit.dart';
import 'first_aid_details_screen.dart';

class FirstAidScreen extends StatelessWidget {
  const FirstAidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text("First Aid"),
          ),
          body: state is GetFirstAidLoadingState
              ? const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemCount: cubit.firstAidModel?.results?.length ?? 0,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemBuilder: (context, index) {
                    var des = cubit.firstAidModel?.results?[index];
                    return GestureDetector(
                      onTap: () {
                        MagicRouter.navigateTo(
                          FirstAidDetailsScreen(
                            desciption: des?.desciption ?? "",
                            title: des?.name ?? "",
                            treatment: des?.treatment ?? "",
                          ),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              dummyImage,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.all(12),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          des?.name ?? "",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
