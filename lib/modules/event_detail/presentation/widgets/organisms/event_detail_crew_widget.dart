import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class EventDetailCrewWidget extends StatelessWidget {
  final String name;
  final double rating;
  final String imageUrl;

  const EventDetailCrewWidget({
    required this.name,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Organizador',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF818181),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    RatingBarIndicator(
                      rating: rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      unratedColor: Colors.amber.withAlpha(50),
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
