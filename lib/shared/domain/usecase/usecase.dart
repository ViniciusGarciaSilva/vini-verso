import 'package:dartz/dartz.dart';
import 'package:vini_verso/shared/domain/errors/failure.dart';

abstract class UseCase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

class NoParams {}
