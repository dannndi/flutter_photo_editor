import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension DioExtension on Dio {
  Dio initClient(String baseUrl) {
    options.baseUrl = baseUrl;
    options.connectTimeout = 30000;
    options.receiveTimeout = 30000;
    options.sendTimeout = 1800000;

    if (kDebugMode) interceptors.add(LogInterceptor(responseBody: true));
    return this;
  }
}
