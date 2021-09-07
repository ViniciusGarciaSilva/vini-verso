import 'package:vini_verso/modules/event_detail/data/models/artist_model.dart';
import 'package:vini_verso/modules/event_detail/data/models/crew_model.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/artist.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/crew.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/shared/utils/date_utils.dart';

class EventModel extends Event {
  EventModel({
    required String id,
    required String name,
    required String imageUrl,
    required DateTime startDate,
    required DateTime endDate,
    required List<Artist> artists,
    required int capacity,
    required int interested,
    required int confirmed,
    required double minPrice,
    required double maxPrice,
    required String ticketsUrl,
    required Crew crew,
    required String description,
    required String lineUpUrl,
  }) : super(
          id: id,
          name: name,
          imageUrl: imageUrl,
          startDate: startDate,
          endDate: endDate,
          artists: artists,
          capacity: capacity,
          interested: interested,
          confirmed: confirmed,
          minPrice: minPrice,
          maxPrice: maxPrice,
          ticketsUrl: ticketsUrl,
          crew: crew,
          description: description,
          lineUpUrl: lineUpUrl,
        );

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      startDate: dateFormatter(json['startDate']),
      endDate: dateFormatter(json['endDate']),
      artists: (json['artists'] as List)
          .map((artist) => ArtistModel.fromJson(artist))
          .toList(),
      capacity: json['capacity'],
      interested: json['interested'],
      confirmed: json['confirmed'],
      minPrice: json['minPrice'],
      maxPrice: json['maxPrice'],
      ticketsUrl: json['ticketsUrl'],
      crew: CrewModel.fromJson(json['crew']),
      description: json['description'],
      lineUpUrl: json['lineUpUrl'],
    );
  }
}
