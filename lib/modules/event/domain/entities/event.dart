import 'package:equatable/equatable.dart';
import 'package:vini_verso/modules/event/domain/entities/artist.dart';
import 'package:vini_verso/modules/event/domain/entities/crew.dart';

class Event extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;
  final List<Artist> artists;
  final int capacity;
  final int interested;
  final int confirmed;
  final double minPrice;
  final double maxPrice;
  final String ticketsUrl;
  final List<Crew> crews;
  final String description;
  final String lineUpUrl;

  Event({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.place,
    required this.zone,
    required this.artists,
    required this.capacity,
    required this.interested,
    required this.confirmed,
    required this.minPrice,
    required this.maxPrice,
    required this.ticketsUrl,
    required this.crews,
    required this.description,
    required this.lineUpUrl,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        startDate,
        endDate,
        artists,
        capacity,
        interested,
        confirmed,
        minPrice,
        maxPrice,
        ticketsUrl,
        crews,
        description,
        lineUpUrl,
      ];
}
