import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/molecules/label_value_molecule.dart';

class EventDetailGeneralInfosOrganism extends StatelessWidget {
  final int capacity;
  final int interested;
  final int confirmed;
  final double minPrice;
  final double maxPrice;
  final String ticketsUrl;

  const EventDetailGeneralInfosOrganism({
    required this.capacity,
    required this.interested,
    required this.confirmed,
    required this.minPrice,
    required this.maxPrice,
    required this.ticketsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(kMarginDefault),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LabelValueMolecule(
                  label: EventStrings.detail.capacity,
                  value: capacity.toString(),
                ),
                LabelValueMolecule(
                  label: EventStrings.detail.interested,
                  value: interested.toString(),
                ),
                LabelValueMolecule(
                  label: EventStrings.detail.confirmed,
                  value: confirmed.toString(),
                ),
              ],
            ),
            const SizedBox(height: kMarginDefault),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: LabelValueMolecule(
                    label: EventStrings.detail.price,
                    value: EventStrings.detail.eventPrice(
                      minPrice: minPrice,
                      maxPrice: maxPrice,
                    ),
                  ),
                ),
                LabelValueMolecule(
                  label: EventStrings.detail.tickets,
                  value: ticketsUrl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
