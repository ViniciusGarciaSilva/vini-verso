import 'package:flutter/material.dart';

class EventDetailDescriptionWidget extends StatelessWidget {
  final String description;

  const EventDetailDescriptionWidget({required this.description});

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
              'Descrição',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF818181),
              ),
            ),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}
