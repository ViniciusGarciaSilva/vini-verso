import 'package:equatable/equatable.dart';

class Artist extends Equatable {
  final String name;
  final String nationality;

  Artist({required this.name, required this.nationality});

  @override
  List<Object?> get props => [name, nationality];
}
