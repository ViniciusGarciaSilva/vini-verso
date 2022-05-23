import 'package:vini_verso/modules/event/data/models/event_model.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/exceptions.dart';
import 'package:vini_verso/shared/data/not_logged_dio.dart';

abstract class EventRemoteDatasource {
  Future<Event> getEventDetail({required String id});
}

class EventRemoteDatasourceImpl implements EventRemoteDatasource {
  final AppNetwork appNetwork;
  final NotLoggedDio dio;

  EventRemoteDatasourceImpl({
    required this.dio,
    required this.appNetwork,
  });

  @override
  Future<Event> getEventDetail({required String id}) async {
    final response = await dio.get(
      appNetwork.eventDetail,
      queryParameters: {
        'idEvent': id,
      },
    );
    try {
      return EventModel.fromJson(response.data);
    } catch (error) {
      throw ParseDataException('$EventModel parse error: $error');
    }
  }
}
