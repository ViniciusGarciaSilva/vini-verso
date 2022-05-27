import 'package:equatable/equatable.dart';

class EventBanner extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;

  EventBanner({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.place,
    required this.zone,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        startDate,
        endDate,
        place,
        zone,
      ];
}
