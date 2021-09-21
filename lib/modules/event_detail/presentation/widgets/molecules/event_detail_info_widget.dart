import 'package:flutter/material.dart';

class EventDetailInfoWidget extends StatelessWidget {
  final String label;
  final String value;

  const EventDetailInfoWidget({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF818181),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
