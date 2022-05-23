import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/jsons/event_json.dart';
import 'package:vini_verso/modules/event/data/models/event_model.dart';

main() {
  test('should return a [EventModel] for a given valid event JSON', () async {
    // Arrange
    final json = eventDetailJson;

    // Act
    final eventModel = EventModel.fromJson(json);

    // Assert
    expect(eventModel, isA<EventModel>());
  });
}
