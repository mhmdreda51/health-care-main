// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/nurses_apis.dart';
import '../../../models/nurces_ specialty_model.dart';
import '../../../models/nurces_cities.dart';

part 'nurses_state.dart';

class NursesCubit extends Cubit<NursesState> {
  NursesCubit() : super(NursesInitial());
  static NursesCubit get(context) => BlocProvider.of(context);

  NursesApis nursesApis = NursesApis();

  NursesCitiesModel? citiesModel;
  Future getAllDoctorsCities() async {
    emit(GetNursesCitiesLoading());
    final res = await nursesApis.getAllCities();
    if (res is NursesCitiesModel) {
      citiesModel = res;
      emit(GetNursesCitiesSuccess());
    } else {
      emit(GetNursesCitiesError());
      log(res.toString());
    }
  }

  NursesSpecialtyModel? specialtyModel;
  Future getAllSpecialty() async {
    emit(GetNursesSpecialtyLoading());
    final res = await nursesApis.getAllSpecialty();
    if (res is NursesSpecialtyModel) {
      specialtyModel = res;
      emit(GetNursesSpecialtySuccess());
    } else {
      emit(GetNursesSpecialtyError());
      log(res.toString());
    }
  }

  int? cityId;
  int? specialtyId;
  selectCityId(int val) {
    cityId = val;
    emit(SelectCityIdState());
  }

  selectspecialtyId(int val) {
    specialtyId = val;
    emit(SelectSpecialtyIdState());
  }

  void makePhoneCall(String phone) async {
    var url = 'tel:$phone';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void goToGoogleMaps(String city) async {
    launch('https://www.google.com/maps/search/$city');
  }

  void makePhoneChat(String phone) async {
    var url = 'https://wa.me/$phone';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
