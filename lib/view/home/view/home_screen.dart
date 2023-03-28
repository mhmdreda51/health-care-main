import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';

import '../../../constants/Strins.dart';
import '../../../constants/app_colors.dart';
import '../../doctors/screens/doctors_screens.dart';
import '../../nurses/view/nurses_screen.dart';
import '../cubit/doctor_screen_cubit.dart';
import '../widgets/home_item.dart';
import 'drawer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorScreenCubit()..getUserData(),
      child: BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
        listener: (context, state) {
          final cubit = DoctorScreenCubit.get(context);

          if (state is GetUserDataNotCompleteState) {
            MagicRouter.navigateAndPopAll(const Scaffold());
          }
          if (state is GetUserDataErrorState) {
            cubit.logOut();
            BotToast.showText(text: "انتهت صلاحيه الجلسه الخاصه بك");
          }
        },
        builder: (context, state) {
          final cubit = DoctorScreenCubit.get(context);
          return Scaffold(
            key: cubit.key,
            drawer: BlocProvider.value(
              value: cubit,
              child: const DrawerScreen(),
            ),
            appBar: state is GetUserDataLoadingState ? null : appBar(cubit),
            body: state is GetUserDataLoadingState
                ? const Center(child: CircularProgressIndicator.adaptive())
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: HomeItem(
                            image: "assets/images/doctor.jpg",
                            title: "Doctors",
                            onTap: () {
                              MagicRouter.navigateTo(const DoctorsScreen());
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: HomeItem(
                            image: "assets/images/doctor2.jpg",
                            title: "Nurses",
                            onTap: () {
                              MagicRouter.navigateTo(const NurseScreen());
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: HomeItem(
                            image: "assets/images/chest-xray-2-600x491.png",
                            title: "Tests",
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: HomeItem(
                            image: "assets/images/health-it.png",
                            title: "Disease Knowledge",
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: HomeItem(
                            image:
                                "assets/images/istockphoto-1439975456-612x612.jpg",
                            title: "First aid",
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }

  AppBar appBar(DoctorScreenCubit cubit) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          cubit.key.currentState!.openDrawer();
        },
        icon: CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
            cubit.profileModel?.results?[0].userPhoto ?? dummyImage,
          ),
        ),
      ),
      title: Text(
        "Hello . ${cubit.profileModel?.results?[0].firstName} ${cubit.profileModel?.results?[0].lastName}",
        style: const TextStyle(
          color: AppColors.deepBlue,
        ),
      ),
    );
  }
}
