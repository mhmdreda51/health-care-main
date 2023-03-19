import 'dart:io';

import 'package:dio/dio.dart';

import '../constants/end_point.dart';
import '../core/dioHelper/dio_helper.dart';
import '../core/dio_manager.dart';
import '../models/profile_model.dart';
import '../models/user_model.dart';

class HomeApis {
  Future getUserData() async {
    final response = await DioManager.dio.get(
      profile,
    );
    if (response.statusCode == 200) {
      final profileModel = ProfileModel.fromJson(response.data);
      return profileModel;
    } else {
      return response.data["detail"].toString();
    }
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

  Future editUserData({
    File? image,
    required String firstName,
    required String lastName,
    required String age,
    required String phoneNum,
    required int userId,
  }) async {
    final response = await DioManager.dio.put(
      "$profile/$userId/",
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
      final editUserModel = EditUserModel.fromJson(response.data);
      return editUserModel;
    } else {
      return response.data["detail"].toString();
    }
  }
}
