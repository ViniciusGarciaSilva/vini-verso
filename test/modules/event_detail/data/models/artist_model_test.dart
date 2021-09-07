import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/entities/entity_mock.dart';
import 'package:vini_verso/modules/event_detail/data/models/artist_model.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/artist.dart';
import 'package:vini_verso/shared/utils/fixture_reader.dart';

main() {
  final artistModelMock = ArtistModel(
    name: EntityMock.artist.name,
    nationality: EntityMock.artist.nationality,
  );
  test('should be a extension of Artist', () {
    // assert
    expect(true, artistModelMock is Artist);
  });
  test('should return a valid model for a artist JSON', () async {
    // arrange
    final Map<String, dynamic> jsonMap = json.decode(await fixture('artist'));
    // act
    final artistModel = ArtistModel.fromJson(jsonMap);
    // assert
    expect(artistModel, artistModelMock);
  });
}
