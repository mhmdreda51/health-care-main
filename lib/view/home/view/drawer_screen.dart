import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/constants/Strins.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../../profile/view/profile_screen.dart';
import '../cubit/doctor_screen_cubit.dart';
import '../widgets/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorScreenCubit, DoctorScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorScreenCubit.get(context);

        return Drawer(
          backgroundColor: Colors.grey[50],
          width: MediaQuery.of(context).size.width / 1.7,
          child: SafeArea(
            child: state is LogoutLoadingState
                ? const Center(child: CircularProgressIndicator.adaptive())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 80,
                              backgroundImage: NetworkImage(
                                cubit.profileModel?.results?[0].userPhoto ??
                                    dummyImage,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "${cubit.profileModel?.results?[0].firstName} ${cubit.profileModel?.results?[0].lastName}",
                              style: const TextStyle(
                                color: AppColors.deepBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "${cubit.profileModel?.results?[0].phoneNumber}",
                              style: const TextStyle(
                                color: AppColors.deepBlue,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(color: AppColors.deepBlue),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DrawerItem(
                              title: "Edit Profile",
                              onTap: () {
                                MagicRouter.navigateTo(
                                  ProfileScreen(
                                    userId:
                                        cubit.profileModel?.results?[0].id ?? 0,
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            DrawerItem(
                              title: "History Data",
                              onTap: () {},
                            ),
                            const SizedBox(height: 20),
                            DrawerItem(
                              title: "Logout",
                              onTap: () {
                                cubit.logOut();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
