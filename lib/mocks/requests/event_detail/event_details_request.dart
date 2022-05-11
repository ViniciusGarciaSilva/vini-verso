import 'package:dio/dio.dart';
import 'package:vini_verso/mocks/requests/event_detail/event_detail_request_mock.dart';
import 'package:vini_verso/shared/data/mock_request.dart';

class EventDetailRequest implements MockRequest {
  @override
  Headers? get requestHeaders => null;

  @override
  RequestType get requestType => RequestType.GET;

  @override
  Map<String, Type> get requiredParams => {'id': String};

  @override
  Headers? get responseHeaders => null;

  @override
  get responseJson => eventDetailMockMap;

  @override
  int? get statusCode => null;
}
