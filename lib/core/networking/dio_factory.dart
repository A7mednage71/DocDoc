import 'package:dio/dio.dart';
import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/helpers/secure_storage_helper.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      // for better readability and conversion.
      dio!.options.headers = {
        'Accept': 'application/json',
        'Authorization':
            'Bearer ${await SecureStorageHelper.getSecuredData(SharedPrefKeys.userToken)}',
      };

      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  static refreshHeaders({required String token}) {
    debugPrint("Refreshed Headers : $token");
    dio!.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}

// The singleton pattern is well-implemented using a private constructor and a static method. 
// This ensures that only one instance of Dio is created throughout the application.