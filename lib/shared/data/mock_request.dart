import 'package:dio/dio.dart';

enum RequestType {
  post,
  get,
  put,
  delete,
}

abstract class MockRequest {
  final RequestType requestType;
  final Map<String, Type> requiredParams;
  final dynamic responseJson;
  final Headers? requestHeaders;
  final Headers? responseHeaders;
  final int? statusCode;

  MockRequest({
    required this.requestType,
    required this.requiredParams,
    required this.responseJson,
    this.requestHeaders,
    this.responseHeaders,
    this.statusCode,
  });
}
