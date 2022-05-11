import 'package:vini_verso/modules/event/data/models/event_model.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/base_dio.dart';

abstract class EventRemoteDatasource {
  Future<Event> getEventDetail({required String id});
}

class EventRemoteDatasourceImpl implements EventRemoteDatasource {
  final AppNetwork appNetwork;
  final BaseDio dio;

  EventRemoteDatasourceImpl({
    required this.dio,
    required this.appNetwork,
  });

  @override
  Future<Event> getEventDetail({required String id}) async {
    final response = await dio.get(
      appNetwork.eventDetail,
      queryParameters: {
        'id': id,
      },
    );
    try {
      return EventModel.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }
}
