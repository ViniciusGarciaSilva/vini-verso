import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final Exception exception;

  Failure({required this.exception});

  String get message => exception.toString();

  @override
  List<Object?> get props => [exception];
}
