import 'package:vini_verso/modules/event/domain/entities/crew.dart';

class CrewModel extends Crew {
  CrewModel({
    required String name,
    required String image,
    required double rating,
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
