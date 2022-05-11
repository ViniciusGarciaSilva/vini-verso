import 'package:vini_verso/modules/event/data/datasources/event_remote_datasource.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event/domain/repositories/event_repository.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDatasource datasource;

  EventRepositoryImpl({required this.datasource});

  @override
  Future<Either<Failure, Event>> getEventDetail(String id) async {
    try {
      final event = await datasource.getEventDetail(id: id);
      return Right(event);
    } catch (error) {
      return Left(Failure(exception: error));
    }
  }
}
