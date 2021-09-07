import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vini_verso/mocks/entities/entity_mock.dart';
import 'package:vini_verso/modules/event_detail/data/datasources/event_detail_remote_datasource.dart';
import 'package:vini_verso/modules/event_detail/data/repositories/event_detail_repository_impl.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class EventDetailRemoteDatasourceMock extends Mock
    implements EventDetailRemoteDatasourceImpl {}

main() {
  late EventDetailRepositoryImpl eventDetailRepositoryImpl;
  late EventDetailRemoteDatasourceImpl eventDetailRemoteDatasource;

  setUp(() {
    eventDetailRemoteDatasource = EventDetailRemoteDatasourceMock();
    eventDetailRepositoryImpl =
        EventDetailRepositoryImpl(datasource: eventDetailRemoteDatasource);
  });

  test(
      'should return a Event when the call to the remote datasource is successful',
      () async {
    // arrange
    final mockId = '1';
    final eventMock = EntityMock.event;
    when(() => eventDetailRemoteDatasource.getEventDetail(id: mockId))
        .thenAnswer((invocation) async => eventMock);
    // act
    final result = await eventDetailRepositoryImpl.getEventDetail(mockId);
    // assert
    verify(() => eventDetailRepositoryImpl.getEventDetail(mockId)).called(1);
    expect(result, Right(eventMock));
  });

  test(
      'should return a Failure when the call to the remote datasource is unsuccessful',
      () async {
    // arrange
    final exception = Exception('Error in Remote Datasource');
    final mockId = '1';
    when(() => eventDetailRemoteDatasource.getEventDetail(id: mockId))
        .thenThrow(exception);
    // act
    final result = await eventDetailRepositoryImpl.getEventDetail(mockId);
    // assert
    verify(() => eventDetailRepositoryImpl.getEventDetail(mockId)).called(1);
    expect(result, Left(Failure(exception: exception)));
  });
}
