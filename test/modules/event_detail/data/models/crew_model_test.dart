import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/jsons/crew_json.dart';
import 'package:vini_verso/modules/event/data/models/crew_model.dart';

void main() {
  test('should return a [CrewModel] for a given valid event JSON', () async {
    // Arrange
    final jsonMap = crewJson;

    // Act
    final crewModel = CrewModel.fromJson(jsonMap);

    // assert
    expect(crewModel, isA<CrewModel>());
  });
}
