import 'package:equatable/equatable.dart';

class Crew extends Equatable {
  final String name;
  final String image;
  final int rating;

  Crew({
    required this.name,
    required this.image,
    required this.rating,
  });

  @override
  List<Object?> get props => [name, image, rating];
}
