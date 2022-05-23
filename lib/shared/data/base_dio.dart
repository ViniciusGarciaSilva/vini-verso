import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/configs/request_config.dart';

class BaseDio extends DioForNative {
  BaseDio({
    required Environment environment,
    required Interceptor enviromentInterceptor,
  }) {
    interceptors.addAll([
      enviromentInterceptor,
      PrettyDioLogger(
        requestBody: true,
        logPrint: (obj) => debugPrint(obj as String?),
      ),
    ]);
    options = BaseOptions(
      baseUrl: environment.baseUrl,
      connectTimeout: RequestConfig.timeout,
    );
  }
}
