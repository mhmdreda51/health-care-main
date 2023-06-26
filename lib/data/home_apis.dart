// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:health_care/core/cacheHelper/cache_helper.dart';
import 'package:health_care/core/router/router.dart';
import 'package:health_care/view/login/view/login_screen.dart';

import '../constants/end_point.dart';
import '../core/dioHelper/dio_helper.dart';
import '../core/dio_manager.dart';
import '../core/network_service.dart/dio_network_service.dart';
import '../models/create_medical_model.dart';
import '../models/diseases_model.dart';
import '../models/first_aid_model.dart';
import '../models/medical_history_model.dart';
import '../models/profile_model.dart';
import '../models/user_model.dart';

class HomeApis {
  Future<ProfileModel?> getUserData(int id) async {
    final request = NetworkRequest(
      path: "accounts/profiles/$id",
      type: NetworkRequestType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': "application/json",
        'Authorization': 'Bearer ${CacheHelper.getUserToken}',
      },
      data: const NetworkRequestBody.empty(),
    );
    final response = await networkService.execute(
      request,
      (parser) => ProfileModel.fromJson(parser),
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
        CacheHelper.signOut();
        MagicRouter.navigateAndPopAll(const LoginScreen());
        BotToast.showText(text: "انتهت صلاحيه الجلسه الخاصه بك");
        return data;
      },
      badRequest: (data) {
        return data;
      },
    );
    return data;
  }

  Future createUserData({
    File? image,
    required String firstName,
    required String lastName,
    required String age,
    required String phoneNum,
  }) async {
    final response = await DioHelper.postData(
      url: profile,
      data: FormData.fromMap(
        image != null
            ? {
                "your_photo": MultipartFile.fromFileSync(
                  image.path,
                  filename: image.path.split('/').last,
                ),
                "first_name": firstName,
                "last_name": lastName,
                "age": age,
                "phone_number": phoneNum,
              }
            : {
                "first_name": firstName,
                "last_name": lastName,
                "age": age,
                "phone_number": phoneNum,
              },
      ),
    );
    if (response.statusCode == 200) {
      final profileModel = ProfileModel.fromJson(response.data);
      return profileModel;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future<EditUserModel?> editUserData({
    File? image,
    String? firstName,
    String? lastName,
    String? age,
    String? phoneNum,
    required int userId,
  }) async {
    DioManager.initDioOptions();
    final request = NetworkRequest(
      path: "$profile/$userId/",
      type: NetworkRequestType.PUT,
      headers: CacheHelper.getUserToken != null
          ? {
              'Accept': 'application/json',
              'Content-Type': "application/json",
              'Authorization': 'Bearer ${CacheHelper.getUserToken}',
            }
          : {
              'Accept': 'application/json',
              'Content-Type': "application/json",
            },
      data: NetworkRequestBody.fromData(
        FormData.fromMap({
          if (image != null)
            "your_photo": MultipartFile.fromFileSync(
              image.path,
              filename: image.path.split('/').last,
            ),
          if (firstName != null) "first_name": firstName,
          if (lastName != null) "last_name": lastName,
          if (age != null) "age": age,
          if (phoneNum != null) "phone_number": phoneNum,
        }),
      ),
    );
    final response = await networkService.execute(
      request,
      (parser) => EditUserModel.fromJson(parser),
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
        CacheHelper.signOut();
        MagicRouter.navigateAndPopAll(const LoginScreen());
        BotToast.showText(text: "انتهت صلاحيه الجلسه الخاصه بك");
        return data;
      },
      badRequest: (data) {
        return data;
      },
    );
    return data;
  }

  Future addMedicalHistory({
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
  }) async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.post(
      medicalHistory,
      data: FormData.fromMap(
        {
          "illnesses_numbers": illnesses_numbers,
          "illnesses": illnesses,
          "illnesses_descriptions": illnesses_descriptions,
          "allergies": allergies,
          "surgeries": surgeries,
          "immunizations": immunizations,
          "results_of_physical_exams_and_tests":
              results_of_physical_exams_and_tests,
          "medicines": medicines,
          "medical_rays": medical_rays,
          "health_habits": health_habits,
          "physical_exams_and_tests_images": MultipartFile.fromFileSync(
            physical_exams_and_tests_images.path,
            filename: physical_exams_and_tests_images.path.split('/').last,
          ),
          "medicines_images": MultipartFile.fromFileSync(
            medicines_images.path,
            filename: medicines_images.path.split('/').last,
          ),
          "medical_rays_images": MultipartFile.fromFileSync(
            medical_rays_images.path,
            filename: medical_rays_images.path.split('/').last,
          ),
        },
      ),
    );
    if (response.statusCode == 201) {
      final createMedicalHistory = CreateMedicalHistory.fromJson(response.data);
      return createMedicalHistory;
    } else {
      return response.data.toString();
    }
  }

  Future getMedicalHistory() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      medicalHistory,
    );
    if (response.statusCode == 200) {
      final medicalHistory = MedicalHistory.fromJson(response.data);
      return medicalHistory;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getDiseases() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      disease,
    );
    if (response.statusCode == 200) {
      final medicalHistory = DiseasesModel.fromJson(response.data);
      return medicalHistory;
    } else {
      return response.data["detail"].toString();
    }
  }

  Future getFirstAid() async {
    DioManager.initDioOptions();

    final response = await DioManager.dio.get(
      aid,
    );
    if (response.statusCode == 200) {
      final medicalHistory = FirstAidModel.fromJson(response.data);
      return medicalHistory;
    } else {
      return response.data["detail"].toString();
    }
  }
}
