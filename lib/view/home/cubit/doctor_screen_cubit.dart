// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/login/view/login_screen.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/cacheHelper/cache_helper.dart';
import '../../../data/auth_apis.dart';
import '../../../data/home_apis.dart';
import '../../../models/profile_model.dart';

part 'doctor_screen_state.dart';

class DoctorScreenCubit extends Cubit<DoctorScreenState> {
  DoctorScreenCubit() : super(DoctorScreenInitial());
  static DoctorScreenCubit get(context) => BlocProvider.of(context);
  final GlobalKey<ScaffoldState> key = GlobalKey();
  AuthApis authApis = AuthApis();
  Future logOut() async {
    CacheHelper.signOut();
    MagicRouter.navigateAndPopAll(const LoginScreen());
    // emit(LogoutLoadingState());
    // try {
    //   final res = await authApis.logoutOfAccount();
    //   if (res == "logout Success") {
    //     CacheHelper.signOut();
    //     MagicRouter.navigateAndPopAll(const LoginScreen());
    //     emit(LogoutSuccessState());
    //   } else {
    //     emit(LogoutErrorState());
    //   }
    // } catch (e) {
    //   log(e.toString());
    //   emit(LogoutErrorState());
    // }
  }

  ProfileModel? profileModel;
  HomeApis homeApis = HomeApis();
  Future getUserData() async {
    emit(GetUserDataLoadingState());
    
      final res = await homeApis.getUserData();
      if (res is ProfileModel) {
        profileModel = res;
        if (profileModel?.count == 0 || profileModel?.count == []) {
          emit(GetUserDataNotCompleteState());
        } else {
          emit(GetUserDataSuccessState());
        }
      } else {
        emit(GetUserDataErrorState());
        log(res.toString());
      }
   
  }
  XFile? xray;
    void pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if (imageFile == null) return;
    xray = imageFile;
    emit(PickUserImageState());
  }
}
