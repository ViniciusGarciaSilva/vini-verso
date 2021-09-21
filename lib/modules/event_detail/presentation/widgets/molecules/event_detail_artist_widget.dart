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
        Image.network(
          'https://www.countryflags.io/$nationality/flat/64.png',
          height: 15,
          width: 15,
        ),
      ],
    );
  }
}
