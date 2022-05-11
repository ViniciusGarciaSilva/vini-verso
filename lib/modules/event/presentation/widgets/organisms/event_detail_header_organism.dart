import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/modules/event/presentation/widgets/atoms/event_name_atom.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_detail_place_molecule.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_detail_name_date_molecule.dart';
import 'package:vini_verso/shared/configs/app_configs.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/atoms/image_atom.dart';

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
          ImageAtom(
            imageUrl: imageUrl,
            height: MediaQuery.of(context).size.width * bannerHeightScale,
            width: MediaQuery.of(context).size.width,
          ),
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
