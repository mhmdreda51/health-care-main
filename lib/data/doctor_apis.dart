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
      cities,
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
      specialty,
    );
    if (response.statusCode == 200) {
      final specialtyModel = SpecialtyModel.fromJson(response.data);
      return specialtyModel;
    } else {
      return response.data["detail"].toString();
    }
  }
}
