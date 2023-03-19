// ignore_for_file: unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../constants/end_point.dart';
import 'cacheHelper/cache_helper.dart';

class DioManager {
  static final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
    ),
  );

  static Future<void> initDioOptions() async {
    // final token = CacheHelper.getUserToken;
    String? token = CacheHelper.getUserToken;

    dio.interceptors.clear();
    
    dio.options.connectTimeout = const Duration(milliseconds: 500000);
    dio.options.receiveTimeout = const Duration(milliseconds: 500000);
    dio.options.sendTimeout = const Duration(milliseconds: 500000);

    dio.options.headers = token != null
        ? {
            "Accept": "application/json",
            'Authorization': 'Token $token',
          }
        : {
            "Accept": "application/json",
          };

    final dioOptions = CacheOptions(
      store: HiveCacheStore((await getTemporaryDirectory()).path),
      hitCacheOnErrorExcept: [401, 403, 404 , 400],
      maxStale: const Duration(days: 7),
    );

    dio.interceptors.addAll(
      [
        DioCacheInterceptor(options: dioOptions),
        if (kDebugMode)
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            maxWidth: 100,
          ),
        InterceptorsWrapper(
          onError: (error, handler) {
            // Get.closeAllSnackbars();
            // if (error.response?.statusCode == 401) {
            //   if (Get.find<HomeController>().isLogin) {
            //     Get.find<HomeController>().logout();
            //   } else {
            //     Get.toNamed(Routes.REGISTER);
            //   }
            // }

            handler.reject(
              DioError(
                requestOptions: error.requestOptions,
                type: DioErrorType.badCertificate,
                error: (error.response?.data
                            as Map<String, dynamic>)['message'] !=
                        null
                    ? (error.response!.data as Map<String, dynamic>)['message']
                        .toString()
                    : "",
              ),
            );
          },
        )
      ],
    );
  }
}
