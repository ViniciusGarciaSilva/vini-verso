import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';

class EventDetailHeaderWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;

  const EventDetailHeaderWidget({
    required this.name,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.place,
    required this.zone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      EventDetailStrings.eventDate(startDate: startDate, endDate: endDate),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Local',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF818181),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          place,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Região',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF818181),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          zone,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
