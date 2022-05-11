import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/requests/event_detail/event_detail_request_mock.dart';
import 'package:vini_verso/modules/event/data/models/event_model.dart';

main() {
  test('should return a valid model for a event JSON', () async {
    // Act
    final eventModel = EventModel.fromJson(eventDetailMockMap);

    // Assert
    expect(eventModel, eventDetailMock);
  });
}
