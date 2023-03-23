import 'dart:developer';

import 'package:health_care/core/dioHelper/dio_helper.dart';

import '../constants/end_point.dart';
import '../core/dio_manager.dart';
import '../models/city_model.dart';
import '../models/doctor_model.dart';
import '../models/specialty_model.dart';

class DoctorsApis {
  Future getAllDoctors() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      doctor,
    );
    if (response.statusCode == 200) {
      final doctorModel = DoctorModel.fromJson(response.data);
      return doctorModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getAllCities() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      doctorCities,
    );
    if (response.statusCode == 200) {
      final citiesModel = CitiesModel.fromJson(response.data);
      return citiesModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getAllSpecialty() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      doctorSpecialty,
    );
    if (response.statusCode == 200) {
      final specialtyModel = SpecialtyModel.fromJson(response.data);
      return specialtyModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getDoctorsWithSpecialtyIdAndCityId({
    required String cityId,
    required String specialtyId,
  }) async {
    DioHelper.init();

    try {
      final response = await DioHelper.getData(
        url: "$doctor?his_specialty$specialtyId=&his_city=$cityId",
      );
      if (response.statusCode == 200) {
        final doctorModel = DoctorModel.fromJson(response.data);
        return doctorModel;
      } else {
        return response.data["detail"].toString();
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
