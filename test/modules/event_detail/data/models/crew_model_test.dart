// import 'dart:convert';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:vini_verso/mocks/entities/entity_mock.dart';
// import 'package:vini_verso/modules/event/data/models/crew_model.dart';
// import 'package:vini_verso/modules/event/domain/entities/crew.dart';

// main() {
//   final crewModelMock = CrewModel(
//     name: EntityMock.crew.name,
//     image: EntityMock.crew.image,
//     rating: EntityMock.crew.rating,
//   );

//   test('should be a extension of Crew', () {
//     // assert
//     expect(true, crewModelMock is Crew);
//   });
//   test('should return a valid model for a crew JSON', () async {
//     // arrange
//     final Map<String, dynamic> jsonMap = json.decode(await fixture('crew'));

//     // act
//     final crewModel = CrewModel.fromJson(jsonMap);

//     // assert
//     expect(crewModel, crewModelMock);
//   });
// }
