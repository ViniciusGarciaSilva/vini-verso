import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/entities/entity_mock.dart';
import 'package:vini_verso/modules/event/data/datasources/event_remote_datasource.dart';
import 'package:vini_verso/modules/event/data/repositories/event_repository_impl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class EventDetailRemoteDatasourceMock extends Mock implements EventRemoteDatasourceImpl {}

main() {
  late EventRepositoryImpl eventDetailRepositoryImpl;
  late EventRemoteDatasourceImpl eventDetailRemoteDatasource;

  setUp(() {
    eventDetailRemoteDatasource = EventDetailRemoteDatasourceMock();
    eventDetailRepositoryImpl = EventRepositoryImpl(datasource: eventDetailRemoteDatasource);
  });

  group('When [getEventDetail] is called,', () {
    test(
        'and the call to the [eventDetailRemoteDatasource.getEventDetail] is successfull, should return a [Event].',
        () async {
      // Arrange
      final mockId = '1';
      final eventMock = EntityMock.event;
      when(() => eventDetailRemoteDatasource.getEventDetail(id: mockId))
          .thenAnswer((invocation) async => eventMock);

      // Act
      final result = await eventDetailRepositoryImpl.getEventDetail(id: mockId);

      // Assert
      verify(() => eventDetailRemoteDatasource.getEventDetail(id: mockId)).called(1);
      expect(result, Right(eventMock));
    });
  });

  test(
      'and the call to the [eventDetailRemoteDatasource.getEventDetail] is unsuccessfull, should return a [Failure].',
      () async {
    // Arrange
    final exception = Exception();
    final mockId = '1';
    when(() => eventDetailRemoteDatasource.getEventDetail(id: mockId)).thenThrow(exception);

    // Act
    final result = await eventDetailRepositoryImpl.getEventDetail(id: mockId);

    // Assert
    verify(() => eventDetailRemoteDatasource.getEventDetail(id: mockId)).called(1);
    expect(result, Left(Failure(exception: exception)));
  });
}
