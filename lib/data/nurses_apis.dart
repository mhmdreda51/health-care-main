import '../constants/end_point.dart';
import '../core/dio_manager.dart';
import '../models/nurces_ specialty_model.dart';
import '../models/nurces_cities.dart';
import '../models/nurses_model.dart';

class NursesApis {
  Future getAllNurses() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      nurses,
    );
    if (response.statusCode == 200) {
      final doctorModel = NursesModel.fromJson(response.data);
      return doctorModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getAllCities() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      nursesCities,
    );
    if (response.statusCode == 200) {
      final citiesModel = NursesCitiesModel.fromJson(response.data);
      return citiesModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getAllSpecialty() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      nursesSpecialty,
    );
    if (response.statusCode == 200) {
      final specialtyModel = NursesSpecialtyModel.fromJson(response.data);
      return specialtyModel;
    } else {
      return response.data["detail"].toString();
    }
  }
}
