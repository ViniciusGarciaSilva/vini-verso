import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/modules/event/domain/repositories/event_repository.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';
import 'package:vini_verso/shared/domain/usecase/usecase.dart';

class GetEventDetailUsecase extends UseCase<Event, GetEventDetailUsecaseParams> {
  final EventRepository repository;

  GetEventDetailUsecase({required this.repository});

  @override
  Future<Either<Failure, Event>> call(GetEventDetailUsecaseParams params) =>
      repository.getEventDetail(params.id);
}

class GetEventDetailUsecaseParams {
  String id;

  GetEventDetailUsecaseParams({required this.id});
}
