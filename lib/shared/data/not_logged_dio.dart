import 'package:dio/dio.dart';
import 'package:vini_verso/shared/configs/environments.dart';
import 'package:vini_verso/shared/data/base_dio.dart';
import 'package:vini_verso/shared/data/mock_interceptor.dart';
import 'package:vini_verso/shared/data/not_logged_interceptor.dart';

class NotLoggedDio extends BaseDio {
  NotLoggedDio({
    required Environment environment,
    required Interceptor enviromentInterceptor,
  }) : super(
          environment: environment,
          enviromentInterceptor: enviromentInterceptor,
        ) {
    if (environment is DevEnvironment) {
      if (enviromentInterceptor is MockInterceptor) {
        interceptors.add(enviromentInterceptor);
      } else {
        throw Exception(
          'When environment is [DevEnvironment], [enviromentInterceptor] should be a [mockInterceptor].',
        );
      }
    }
    if (environment is HmgEnvironment) {
      if (enviromentInterceptor is NotLoggedInterceptor) {
        interceptors.add(enviromentInterceptor);
      } else {
        throw Exception(
          'When environment is [HmgEnvironment], [enviromentInterceptor] should be a [notLoggedInterceptor].',
        );
      }
    }
  }
}
