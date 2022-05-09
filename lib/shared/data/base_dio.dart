import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/configs/request_config.dart';
import 'package:vini_verso/shared/data/mock_interceptor.dart';

class BaseDio extends DioForNative {
  BaseDio({
    required Environment enviroment,
    MockInterceptor? mockInterceptor,
  }) {
    interceptors.add(PrettyDioLogger(
      requestBody: true,
      logPrint: (obj) => debugPrint(obj as String?),
    ));
    options = BaseOptions(
      baseUrl: enviroment.baseUrl,
      connectTimeout: RequestConfig.timeout,
    );
    if (enviroment is DevEnvironment && mockInterceptor != null) {
      interceptors.add(mockInterceptor);
    } else {
      throw Exception(
          'When environment is [DevEnvironment], a mockInterceptor should be provided.');
    }
  }
}
