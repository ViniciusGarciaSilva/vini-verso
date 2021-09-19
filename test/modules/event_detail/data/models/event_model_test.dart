import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/entities/entity_mock.dart';
import 'package:vini_verso/modules/event_detail/data/models/event_model.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/shared/utils/fixture_reader.dart';

main() {
  final eventModelMock = EventModel(
    id: EntityMock.event.id,
    name: EntityMock.event.name,
    imageUrl: EntityMock.event.imageUrl,
    startDate: EntityMock.event.startDate,
    endDate: EntityMock.event.endDate,
    place: EntityMock.event.place,
    zone: EntityMock.event.zone,
    artists: EntityMock.event.artists,
    capacity: EntityMock.event.capacity,
    interested: EntityMock.event.interested,
    confirmed: EntityMock.event.confirmed,
    minPrice: EntityMock.event.minPrice,
    maxPrice: EntityMock.event.maxPrice,
    ticketsUrl: EntityMock.event.ticketsUrl,
    crew: EntityMock.event.crew,
    description: EntityMock.event.description,
    lineUpUrl: EntityMock.event.lineUpUrl,
  );

  test('should be a extension of Event', () {
    // assert
    expect(true, eventModelMock is Event);
  });
  test('should return a valid model for a event JSON', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(await fixture('event'));

    // act
    final eventModel = EventModel.fromJson(jsonMap);

    // assert
    expect(eventModel, eventModelMock);
  });
}
