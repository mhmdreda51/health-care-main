import '../constants/end_point.dart';
import '../core/cacheHelper/cache_helper.dart';
import '../core/dio_manager.dart';
import '../core/network_service.dart/dio_network_service.dart';
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

  Future<DoctorModel?> getDoctorsWithSpecialtyIdAndCityId({
    int? cityId,
    int? specialtyId,
  }) async {
    final request = NetworkRequest(
      path: doctor,
      type: NetworkRequestType.GET,
      queryParams: {
        if (specialtyId != null) "his_specialty": specialtyId,
        if (cityId != null) "his_city": cityId,
      },
      headers: {
        'Accept': 'application/json',
        'Content-Type': "application/json",
        "Authorization": "Token ${CacheHelper.getUserToken}"
      },
      data: const NetworkRequestBody.empty(),
    );
    final response = await networkService.execute(
      request,
      (parser) => DoctorModel.fromJson(parser),
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
