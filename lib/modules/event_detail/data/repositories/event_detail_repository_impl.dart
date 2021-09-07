import 'package:vini_verso/modules/event_detail/data/datasources/event_detail_remote_datasource.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event_detail/domain/repositories/event_detail_repository.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class EventDetailRepositoryImpl implements EventDetailRepository {
  final EventDetailRemoteDatasource datasource;

  EventDetailRepositoryImpl({required this.datasource});

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
