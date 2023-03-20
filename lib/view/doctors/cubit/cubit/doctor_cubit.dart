import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/models/specialty_model.dart';

import '../../../../data/doctor_apis.dart';
import '../../../../models/city_model.dart';
import '../../../../models/doctor_model.dart';

part 'doctor_state.dart';

class DoctorCubit extends Cubit<DoctorState> {
  DoctorCubit() : super(DoctorInitial());
  static DoctorCubit get(context) => BlocProvider.of(context);

  DoctorsApis doctorApis = DoctorsApis();
  DoctorModel? doctorModel;
  Future getAllDoctors() async {
    emit(GetDoctorsLoading());
    final res = await doctorApis.getAllDoctors();
    if (res is DoctorModel) {
      doctorModel = res;
      emit(GetDoctorsSuccess());
    } else {
      emit(GetDoctorsError());
      log(res.toString());
    }
  }

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
}
