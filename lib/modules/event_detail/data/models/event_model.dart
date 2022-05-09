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
    required String place,
    required String zone,
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
          place: place,
          zone: zone,
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
      imageUrl: json['image_url'],
      startDate: dateFormatter(json['start_date']),
      endDate: dateFormatter(json['end_date']),
      place: json['place'],
      zone: json['zone'],
      // artists: [],
      artists: (json['artists'] as List).map((artist) => ArtistModel.fromJson(artist)).toList(),
      capacity: json['capacity'],
      interested: json['interested'],
      confirmed: json['confirmed'],
      minPrice: json['min_price'],
      maxPrice: json['max_price'],
      ticketsUrl: json['tickets_url'],
      crew: CrewModel.fromJson(json['crew']), // TODO:
      // crew: Crew(
      //   name: "PsyFly",
      //   image:
      //       "https://scontent.fcgh3-1.fna.fbcdn.net/v/t1.6435-9/92773386_1115110582187191_4179017249320861696_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHyMCszLxm7-78M_X_SDin6lCWxpJHLxAiUJbGkkcvECE4ZvI7vrXOUlC29KXp-5bGxt2blfisg6CQbXHX9JrFt&_nc_ohc=g7DNKvrw8yEAX8b8AsS&_nc_ht=scontent.fcgh3-1.fna&oh=5d063630f3a12063d935d9261064f7d2&oe=615B6BD2",
      //   rating: 5.0,
      // ),
      description: json['description'],
      lineUpUrl: json['line_up_url'],
    );
  }
}
