import 'package:dio/dio.dart';
import 'package:vini_verso/shared/data/mock_request.dart';
import 'package:vini_verso/shared/data/mock_server.dart';

class MockInterceptor extends Interceptor {
  final MockServer mockServer;

  MockInterceptor({
    required this.mockServer,
  });

  final requestDelay = Duration(seconds: 1);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      await Future.delayed(requestDelay);

      final mockRequest = _validateRequest(path: options.path);

      _validateMethod(mockType: mockRequest.requestType, optionMethod: options.method);

      final params =
          mockRequest.requestType == RequestType.get ? options.queryParameters : options.data;

      _validateParams(mockRequest: mockRequest, data: params);

      final response = Response(
        data: mockRequest.responseJson,
        requestOptions: options,
      );

      handler.resolve(response, true);
    } catch (error) {
      _rejectRequest(options, handler, message: error.toString());
    }
  }

  void _rejectRequest(
    RequestOptions options,
    RequestInterceptorHandler handler, {
    String? message,
    DioErrorType type = DioErrorType.response,
  }) {
    final error = DioError(
      requestOptions: options,
      type: type,
      response: Response(
        requestOptions: options,
        data: {'message': message},
      ),
    );
    handler.reject(error);
  }

  MockRequest _validateRequest({required String path}) {
    final mockRequest = mockServer.requests[path];
    if (mockRequest == null) {
      throw Exception('The endpoint $path doesn\'t exist on mock_server.dart');
    }
    return mockRequest;
  }

  void _validateMethod({required RequestType mockType, required String optionMethod}) {
    if (mockType.name.toLowerCase() == optionMethod.toLowerCase()) {
      return;
    } else {
      throw Exception(
          'Wrong method! You are using $optionMethod but this endpoint is a ${mockType.name}');
    }
  }

  String? _validateParams({required MockRequest mockRequest, required Map<String, dynamic> data}) {
    for (final param in mockRequest.requiredParams.entries) {
      if (data[param.key] == null) {
        throw Exception('Required param is missing: ${param.key}');
      }
      if (data[param.key].runtimeType != param.value) {
        throw Exception(
            'Wrong type in parameter [${param.key}]. The expected type is ${param.value} and not ${data[param.key].runtimeType}');
      }
    }
    return null;
  }
}
