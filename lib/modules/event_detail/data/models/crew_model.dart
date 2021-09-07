import 'package:vini_verso/modules/event_detail/domain/entities/crew.dart';

class CrewModel extends Crew {
  CrewModel({
    required String name,
    required String image,
    required int rating,
  }) : super(
          image: image,
          name: name,
          rating: rating,
        );

  factory CrewModel.fromJson(Map<String, dynamic> json) {
    return CrewModel(
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
    );
  }
}
