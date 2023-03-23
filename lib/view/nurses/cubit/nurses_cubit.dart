import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/nurses_apis.dart';
import '../../../models/nurces_ specialty_model.dart';
import '../../../models/nurces_cities.dart';
import '../../../models/nurses_model.dart';

part 'nurses_state.dart';

class NursesCubit extends Cubit<NursesState> {
  NursesCubit() : super(NursesInitial());
  static NursesCubit get(context) => BlocProvider.of(context);

  NursesApis nursesApis = NursesApis();
  NursesModel? nursesModel;
  Future getAllNurses() async {
    emit(GetNursesLoading());
    final res = await nursesApis.getAllNurses();
    if (res is NursesModel) {
      nursesModel = res;
      emit(GetNursesSuccess());
    } else {
      emit(GetNursesError());
      log(res.toString());
    }
  }

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

  Future getAllSearchDoctors({
    required int cityId,
    required int specialtyId,
  }) async {
    emit(GetNursesSearchLoading());
    final res = await nursesApis.getNurseWithSpecialtyIdAndCityId(
      cityId: cityId.toString(),
      specialtyId: specialtyId.toString(),
    );
    if (res is NursesModel) {
      nursesModel = res;

      emit(GetNursesSearchSuccess());
    } else {
      emit(GetNursesSearchError());
      log(res.toString());
    }
  }
}
