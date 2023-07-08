import 'package:dio/dio.dart';

import '../../constants/end_point.dart';
import '../cacheHelper/cache_helper.dart';

class DioHelper {
  static Dio? dio;
  static const String bUrl = baseUrl;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status) => true,
      ),
    );
  }

//===============================================================
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Content-Type': "application/json",
      if (CacheHelper.getUserToken != null)
        "Authorization": "Token ${CacheHelper.getUserToken}"
    };
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

//===============================================================
  static Future<Response<dynamic>> postData({
    required String url,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers ={
      'Accept': 'application/json',
      'Content-Type': "application/json",
      if (CacheHelper.getUserToken != null)
        "Authorization": "Token ${CacheHelper.getUserToken}"
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
