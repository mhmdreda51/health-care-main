import '../constants/end_point.dart';
import '../core/cacheHelper/cache_helper.dart';
import '../core/dio_manager.dart';
import '../core/network_service.dart/dio_network_service.dart';
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

  Future<NursesModel?> getNursesWithSpecialtyIdAndCityId({
    int? cityId,
    int? specialtyId,
  }) async {
    final request = NetworkRequest(
      path: nurses,
      type: NetworkRequestType.GET,
      queryParams: {
        if (specialtyId != null) "his_specialty": specialtyId,
        if (cityId != null) "his_city": cityId,
      },
     headers: {
        'Accept': 'application/json',
        'Content-Type': "application/json",
        if (CacheHelper.getUserToken != null)
          "Authorization": "Token ${CacheHelper.getUserToken}"
      },
      data: const NetworkRequestBody.empty(),
    );
    final response = await networkService.execute(
      request,
      (parser) => NursesModel.fromJson(parser),
    );
    var data = response.maybeWhen(
      ok: ((data) {
        return data;
      }),
      orElse: () {
        return null;
      },
      invalidParameters: (data) {
        return data;
      },
      conflict: (data) {
        return data;
      },
      noAccess: (data) {
        return data;
      },
      noAuth: (data) {
        return data;
      },
      badRequest: (data) {
        return data;
      },
    );
    return data;
  }
}
