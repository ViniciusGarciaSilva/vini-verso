import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/molecules/label_value_molecule.dart';

class EventDetailPlaceMolecule extends StatelessWidget {
  final String place;
  final String zone;

  const EventDetailPlaceMolecule({
    required this.place,
    required this.zone,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: LabelValueMolecule(
            label: EventStrings.detail.local,
            value: place,
          ),
        ),
        const SizedBox(height: kMarginDetail),
        Expanded(
          child: LabelValueMolecule(
            label: EventStrings.detail.region,
            value: zone,
          ),
        ),
      ],
    );
  }
}
