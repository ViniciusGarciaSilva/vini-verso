import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/modules/event/domain/repositories/event_repository.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';
import 'package:vini_verso/shared/domain/usecase/usecase.dart';

class GetEventListUsecase extends UseCase<List<EventBanner>, NoParams> {
  final EventRepository eventRepository;

  GetEventListUsecase({
    required this.eventRepository,
  });

  @override
  Future<Either<Failure, List<EventBanner>>> call(NoParams params) {
    return eventRepository.getEventList();
  }
}
