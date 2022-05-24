import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/modules/event/presentation/widgets/atoms/event_name_atom.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventNameLocalMolecule extends StatelessWidget {
  final String name;
  final DateTime startDate;
  final DateTime endDate;

  const EventNameLocalMolecule({
    required this.name,
    required this.startDate,
    required this.endDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        EventNameAtom(name: name),
        const SizedBox(height: kMarginSmall),
        Text(
          EventStrings.detail.eventDate(startDate: startDate, endDate: endDate),
          style: AppTextStyles.roboto.regular.size.h14,
        ),
      ],
    );
  }
}
