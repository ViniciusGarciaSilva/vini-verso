import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vini_verso/mocks/entities/entity_mock.dart';
import 'package:vini_verso/modules/event_detail/domain/repositories/event_detail_repository.dart';
import 'package:vini_verso/modules/event_detail/domain/usecases/get_event_detail_usecase.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class MockEventDetailRepository extends Mock implements EventDetailRepository {}

void main() {
  late EventDetailRepository repository;
  late GetEventDetailUsecase usecase;

  setUp(() {
    repository = MockEventDetailRepository();
    usecase = GetEventDetailUsecase(repository: repository);
  });

  test('should return a Event Entity for a given id when the call to the repository is successful',
      () async {
    // arrange
    final mockId = '1';
    final params = GetEventDetailUsecaseParams(id: mockId);
    when(() => repository.getEventDetail(mockId)).thenAnswer((_) async => Right(EntityMock.event));

    // act
    final result = await usecase(params);

    // assert
    verify(() => repository.getEventDetail(mockId)).called(1);
    expect(Right(EntityMock.event), result);
  });

  test('should return a Failure when the call to the repository is unsuccessful', () async {
    // arrange
    final mockId = '1';
    final params = GetEventDetailUsecaseParams(id: mockId);
    final mockFailure = Failure(exception: Exception('falha no repositorio'));
    when(() => repository.getEventDetail(mockId)).thenAnswer((_) async => Left(mockFailure));

    // act
    final result = await usecase(params);

    // assert
    verify(() => repository.getEventDetail(mockId)).called(1);
    expect(Left(mockFailure), result);
  });
}
