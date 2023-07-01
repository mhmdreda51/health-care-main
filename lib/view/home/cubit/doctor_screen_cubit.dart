// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks, non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/cacheHelper/cache_helper.dart';
import '../../../core/router/router.dart';
import '../../../data/auth_apis.dart';
import '../../../data/home_apis.dart';
import '../../../models/create_medical_model.dart';
import '../../../models/diseases_model.dart';
import '../../../models/first_aid_model.dart';
import '../../../models/profile_model.dart';
import '../../../models/user_model.dart';
import '../../login/view/login_screen.dart';

part 'doctor_screen_state.dart';

class DoctorScreenCubit extends Cubit<DoctorScreenState> {
  DoctorScreenCubit() : super(DoctorScreenInitial());
  static DoctorScreenCubit get(context) => BlocProvider.of(context);
  final GlobalKey<ScaffoldState> key = GlobalKey();

  AuthApis authApis = AuthApis();
  Future logOut() async {
    emit(LogoutLoadingState());
    try {
      await authApis.logoutOfAccount();
      CacheHelper.signOut();
      MagicRouter.navigateAndPopAll(const LoginScreen());
      emit(LogoutSuccessState());
    } catch (e) {
      log(e.toString());
      emit(LogoutErrorState());
    }
  }

  File? userimage;

  ImagePicker? imagePicker;

  void pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if (imageFile == null) return;
    userimage = File(imageFile.path);
    emit(PickUserImage());
  }

  ProfileModel? profileModel;
  HomeApis homeApis = HomeApis();
  Future getUserData() async {
    emit(GetUserDataLoadingState());
    final res = await homeApis.getUserData();
    if (res is ProfileModel) {
      profileModel = res;
      if (profileModel?.results?[0].userPhoto == null &&
          profileModel?.results?[0].firstName == null &&
          profileModel?.results?[0].lastName == null &&
          profileModel?.results?[0].phoneNumber == null &&
          profileModel?.results?[0].age == null) {
        emit(GetUserDataNotCompleteState(profileModel?.results?[0].id ?? 0));
      } else {
        emit(GetUserDataSuccessState());
      }
    } else {
      emit(GetUserDataErrorState());
      log(res.toString());
    }
  }

  File? xray;
  File? medicines;
  File? tests;
  TextEditingController illnessNunController = TextEditingController();

  TextEditingController illnessController = TextEditingController();
  TextEditingController illnessDiscController = TextEditingController();

  TextEditingController allergiesController = TextEditingController();

  TextEditingController surgeriesController = TextEditingController();

  TextEditingController immunizationsController = TextEditingController();

  TextEditingController results_of_physical_exams_and_testsController =
      TextEditingController();

  TextEditingController medicinesController = TextEditingController();
  TextEditingController medical_raysController = TextEditingController();
  TextEditingController health_habitsController = TextEditingController();

  GlobalKey<FormState> medicalFormKey = GlobalKey<FormState>();
  void pickXrayFromGallery() async {
    PermissionStatus statue = await Permission.photos.request();
    if (statue.isDenied) {
      final ImagePicker picker = ImagePicker();
      final imageFile = await picker.pickImage(source: ImageSource.gallery);
      if (imageFile == null) return;
      xray = File(imageFile.path);
      emit(PickXrayImageState());
    } else {
      return;
    }
  }

  void pickTestsFromGallery() async {
    PermissionStatus statue = await Permission.photos.request();
    if (statue.isDenied) {
      final ImagePicker picker = ImagePicker();
      final imageFile = await picker.pickImage(source: ImageSource.gallery);
      if (imageFile == null) return;
      tests = File(imageFile.path);
      emit(PickTestsImageState());
    } else {
      return;
    }
  }

  void pickmedicinesFromGallery() async {
    PermissionStatus statue = await Permission.photos.request();
    if (statue.isDenied) {
      final ImagePicker picker = ImagePicker();
      final imageFile = await picker.pickImage(source: ImageSource.gallery);
      if (imageFile == null) return;
      medicines = File(imageFile.path);
      emit(PickMedicionImageState());
    } else {
      return;
    }
  }

  Future createMedicalHostory({
    required String illnesses_numbers,
    required String illnesses,
    required String illnesses_descriptions,
    required String allergies,
    required String surgeries,
    required String immunizations,
    required String results_of_physical_exams_and_tests,
    required File physical_exams_and_tests_images,
    required String medicines,
    required File medicines_images,
    required String medical_rays,
    required File medical_rays_images,
    required String health_habits,
        required int id,

  }) async {
    emit(CreateMedicalLoadingState());

    final res = await homeApis.addMedicalHistory(
      illnesses_numbers: illnesses_numbers,
      illnesses: illnesses,
      illnesses_descriptions: illnesses_descriptions,
      allergies: allergies,
      surgeries: surgeries,
      immunizations: immunizations,
      results_of_physical_exams_and_tests: results_of_physical_exams_and_tests,
      physical_exams_and_tests_images: physical_exams_and_tests_images,
      medicines: medicines,
      medicines_images: medicines_images,
      medical_rays: medical_rays,
      medical_rays_images: medical_rays_images,
      health_habits: health_habits,
      id: id
    );
    if (res is CreateMedicalHistory) {
      emit(CreateMedicalSuccessState());
    } else {
      emit(CreateMedicalErrorState());
      log(res.toString());
    }
  }

  DiseasesModel? diseasesModel;
  Future getDiseases() async {
    emit(GetDiseasesLoadingState());

    final res = await homeApis.getDiseases();
    if (res is DiseasesModel) {
      diseasesModel = res;
      emit(GetDiseasesSuccessState());
    } else {
      emit(GetDiseasesErrorState());
      log(res.toString());
    }
  }

  FirstAidModel? firstAidModel;
  Future getFirstAid() async {
    emit(GetFirstAidLoadingState());

    final res = await homeApis.getFirstAid();
    if (res is FirstAidModel) {
      firstAidModel = res;
      emit(GetFirstAidSuccessState());
    } else {
      emit(GetFirstAidErrorState());
      log(res.toString());
    }
  }

  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController disaeseTypeController = TextEditingController();
  TextEditingController disaeseDiscController = TextEditingController();
  Future editUserProfile({
    File? image,
    String? firstName,
    String? lastName,
    String? age,
    String? phoneNum,
    required int userId,
  }) async {
    emit(EditUserProfileLoading());
    final res = await homeApis.editUserData(
      age: age,
      firstName: firstName,
      lastName: lastName,
      phoneNum: phoneNum,
      userId: userId,
      image: image,
    );
    if (res is EditUserModel) {
      emit(EditUserProfileSuccess());
    } else {
      emit(EditUserProfileError(res.toString()));
      log(res.toString());
    }
  }
}
