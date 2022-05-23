import 'package:vini_verso/modules/event/domain/entities/artist.dart';

class ArtistModel extends Artist {
  ArtistModel({
    required String name,
    required String nationality,
  }) : super(
          name: name,
          nationality: nationality,
        );

  factory ArtistModel.fromJson(Map<String, dynamic> json) {
    return ArtistModel(
      name: json['djName'],
      nationality: json['nationality'],
    );
  }
}
