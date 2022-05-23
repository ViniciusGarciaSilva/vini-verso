import 'package:dio/dio.dart';
import 'package:vini_verso/mocks/jsons/event_json.dart';
import 'package:vini_verso/shared/data/mock_request.dart';

class EventDetailRequest implements MockRequest {
  @override
  Headers? get requestHeaders => null;

  @override
  RequestType get requestType => RequestType.get;

  @override
  Map<String, Type> get requiredParams => {'idEvent': String};

  @override
  Headers? get responseHeaders => null;

  @override
  get responseJson => eventDetailJson;

  @override
  int? get statusCode => null;
}
