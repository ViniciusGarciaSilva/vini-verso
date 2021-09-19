import 'dart:convert';

import 'package:vini_verso/modules/event_detail/data/models/event_model.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/shared/utils/fixture_reader.dart';

abstract class EventDetailRemoteDatasource {
  Future<Event> getEventDetail({required String id});
}

class EventDetailRemoteDatasourceImpl implements EventDetailRemoteDatasource {
  @override
  Future<Event> getEventDetail({required String id}) async {
    final Map<String, dynamic> jsonMap = json.decode(await fixture('event'));
    return Future.delayed(
      const Duration(seconds: 5),
      () => EventModel.fromJson(jsonMap),
    );
  }
}
