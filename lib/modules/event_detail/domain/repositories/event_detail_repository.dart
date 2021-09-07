import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

abstract class EventDetailRepository {
  Future<Either<Failure, Event>> getEventDetail(String id);
}
