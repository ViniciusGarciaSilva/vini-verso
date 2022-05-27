import 'package:vini_verso/modules/event/data/models/event_banner_model.dart';
import 'package:vini_verso/modules/event/data/models/event_model.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/shared/data/app_network.dart';
import 'package:vini_verso/shared/data/exceptions.dart';
import 'package:vini_verso/shared/data/not_logged_dio.dart';

abstract class EventRemoteDatasource {
  Future<Event> getEventDetail({required String id});

  Future<List<EventBanner>> getEventList();
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
      throw ParseDataException('[EventModel] parse error: $error');
    }
  }

  @override
  Future<List<EventBanner>> getEventList() async {
    final response = await dio.get(appNetwork.eventList);
    try {
      return (response.data['events'] as List).map((e) => EventBannerModel.fromJson(e)).toList();
    } catch (error) {
      throw ParseDataException('[EventBannerModel] parse error: $error');
    }
  }
}
