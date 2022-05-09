import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EventDetailArtistWidget extends StatelessWidget {
  final String name;
  final String nationality;

  const EventDetailArtistWidget({required this.name, required this.nationality});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(width: 4),
        CachedNetworkImage(
          imageUrl: 'https://countryflagsapi.com/png/$nationality',
          height: 15,
          width: 15,
        ),
      ],
    );
  }
}
