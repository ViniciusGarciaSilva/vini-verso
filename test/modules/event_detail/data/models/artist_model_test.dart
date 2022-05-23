import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/jsons/artist_json.dart';
import 'package:vini_verso/modules/event/data/models/artist_model.dart';

main() {
  test('should return a [ArtistModel] for a given valid event JSON', () async {
    // Arrange
    final json = artistJson;

    // Act
    final eventModel = ArtistModel.fromJson(json);

    // Assert
    expect(eventModel, isA<ArtistModel>());
  });
}
