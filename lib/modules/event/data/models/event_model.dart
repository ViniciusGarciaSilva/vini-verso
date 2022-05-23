import 'package:vini_verso/modules/event/data/models/artist_model.dart';
import 'package:vini_verso/modules/event/data/models/crew_model.dart';
import 'package:vini_verso/modules/event/domain/entities/artist.dart';
import 'package:vini_verso/modules/event/domain/entities/crew.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/shared/utils/date_utils.dart';

class EventModel extends Event {
  EventModel({
    required int id,
    required String name,
    required String imageUrl,
    required DateTime startDate,
    required DateTime endDate,
    required String place,
    required String zone,
    required List<Artist> artists,
    required int capacity,
    required int interested,
    required int confirmed,
    required double minPrice,
    required double maxPrice,
    required String ticketsUrl,
    required List<Crew> crew,
    required String description,
    required String lineUpUrl,
  }) : super(
          id: id,
          name: name,
          imageUrl: imageUrl,
          startDate: startDate,
          endDate: endDate,
          place: place,
          zone: zone,
          artists: artists,
          capacity: capacity,
          interested: interested,
          confirmed: confirmed,
          minPrice: minPrice,
          maxPrice: maxPrice,
          ticketsUrl: ticketsUrl,
          crews: crew,
          description: description,
          lineUpUrl: lineUpUrl,
        );

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['eventName'],
      imageUrl: json['imageUrl'],
      startDate: dateFormatter(json['startDate']),
      endDate: dateFormatter(json['endDate']),
      place: json['place'],
      zone: json['zone'],
      artists: (json['artists'] as List).map((artist) => ArtistModel.fromJson(artist)).toList(),
      capacity: json['capacity'],
      interested: json['interested'],
      confirmed: json['confirmed'],
      minPrice: json['minPrice'],
      maxPrice: json['maxPrice'],
      ticketsUrl: json['ticketsUrl'],
      crew: (json['crew'] as List).map((crewJson) => CrewModel.fromJson(crewJson)).toList(),
      description: json['eventDescription'],
      lineUpUrl: json['lineupUrl'] ?? '',
    );
  }
}
