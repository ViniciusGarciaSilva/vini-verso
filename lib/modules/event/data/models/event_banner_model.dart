import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/shared/utils/date_utils.dart';

class EventBannerModel extends EventBanner {
  EventBannerModel({
    required int id,
    required String name,
    required String imageUrl,
    required DateTime startDate,
    required DateTime endDate,
    required String place,
    required String zone,
  }) : super(
            id: id,
            name: name,
            imageUrl: imageUrl,
            startDate: startDate,
            endDate: endDate,
            place: place,
            zone: zone);

  factory EventBannerModel.fromJson(Map<String, dynamic> json) {
    return EventBannerModel(
      id: json['id'],
      name: json['eventName'],
      imageUrl: json['imageUrl'],
      startDate: dateFormatter(json['startDate']),
      endDate: dateFormatter(json['endDate']),
      place: json['place'],
      zone: json['zone'],
    );
  }
}
