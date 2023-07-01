// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/models/specialty_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/doctor_apis.dart';
import '../../../../models/city_model.dart';

part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorInitial());
  static DoctorCubit get(context) => BlocProvider.of(context);

  DoctorsApis doctorApis = DoctorsApis();

  CitiesModel? citiesModel;
  Future getAllDoctorsCities() async {
    emit(GetDoctoresCitiesLoading());
    final res = await doctorApis.getAllCities();
    if (res is CitiesModel) {
      citiesModel = res;
      emit(GetDoctorsCitiesSuccess());
    } else {
      emit(GetDoctorsCitiesError());
      log(res.toString());
    }
  }

  SpecialtyModel? specialtyModel;
  Future getAllSpecialty() async {
    emit(GetDoctoresSpecialtyLoading());
    final res = await doctorApis.getAllSpecialty();
    if (res is SpecialtyModel) {
      specialtyModel = res;
      emit(GetDoctorsSpecialtySuccess());
    } else {
      emit(GetDoctorsSpecialtyError());
      log(res.toString());
    }
  }

  int? cityId;
  int? specialtyId;
  String? city;
  String? specialt;
  selectCityId(int val, String value) {
    cityId = val;
    city = value;
    emit(SelectCityIdState());
  }

  selectspecialtyId(int val, String value) {
    specialtyId = val;
    specialt = value;
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

  void makePhoneChat(String phone) async {
    var url = 'https://wa.me/$phone';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  void goToGoogleMaps(String city) async {
    launch('https://www.google.com/maps/search/$city');
  }

  void clearSearchData() {
    cityId = null;
    specialtyId = null;
    city = null;
    specialt = null;
    emit(ClearSearchData());
  }
}
