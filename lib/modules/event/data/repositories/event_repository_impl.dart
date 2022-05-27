import 'package:dio/dio.dart';
import 'package:vini_verso/modules/event/data/datasources/event_remote_datasource.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:dartz/dartz.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/modules/event/domain/repositories/event_repository.dart';
import 'package:vini_verso/shared/data/exceptions.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

class EventRepositoryImpl implements EventRepository {
  final EventRemoteDatasource eventRemoteDatasource;

  EventRepositoryImpl({required this.eventRemoteDatasource});

  @override
  Future<Either<Failure, Event>> getEventDetail({required String id}) async {
    try {
      final event = await eventRemoteDatasource.getEventDetail(id: id);
      return Right(event);
    } on ParseDataException catch (error) {
      return Left(Failure(exception: error));
    } on DioError catch (error) {
      return Left(Failure(exception: error));
    } on Exception catch (error) {
      return Left(Failure(exception: error));
    }
  }

  @override
  Future<Either<Failure, List<EventBanner>>> getEventList() async {
    try {
      final result = await eventRemoteDatasource.getEventList();
      return Right(result);
    } on ParseDataException catch (error) {
      return Left(Failure(exception: error));
    } on DioError catch (error) {
      return Left(Failure(exception: error));
    } on Exception catch (error) {
      return Left(Failure(exception: error));
    }
  }
}
