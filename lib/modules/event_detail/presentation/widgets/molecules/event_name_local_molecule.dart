import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/atoms/event_name_atom.dart';
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
      children: [
        EventNameAtom(name: name),
        const SizedBox(height: kMarginSmall),
        Text(
          EventDetailStrings.eventDate(startDate: startDate, endDate: endDate),
          style: AppTextStyles.roboto.regular.size.h14,
        ),
      ],
    );
  }
}
