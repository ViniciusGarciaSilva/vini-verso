import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_detail_place_molecule.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_name_date_molecule.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';

class EventDetailHeaderOrganism extends StatelessWidget {
  final String name;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;

  const EventDetailHeaderOrganism({
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
          Padding(
            padding: const EdgeInsets.all(kMarginDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EventNameLocalMolecule(
                  name: name,
                  startDate: startDate,
                  endDate: endDate,
                ),
                const SizedBox(height: kMarginDefault),
                EventDetailPlaceMolecule(
                  place: place,
                  zone: zone,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
