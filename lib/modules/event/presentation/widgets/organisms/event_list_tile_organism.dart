import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_list_tile_local_place_molecule.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_name_date_molecule.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/atoms/image_atom.dart';

class EventListTileOrganism extends StatelessWidget {
  final EventBanner event;
  final void Function(int id) onTap;

  const EventListTileOrganism({
    required this.event,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(event.id),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(kMarginDefault),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EventNameLocalMolecule(
                    name: event.name,
                    startDate: event.startDate,
                    endDate: event.endDate,
                  ),
                  const SizedBox(height: kMarginSmall),
                  EventListTileLocalPlaceMolecule(
                    zone: event.zone,
                    place: event.place,
                  ),
                ],
              ),
            ),
            ImageAtom(
              imageUrl: event.imageUrl,
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
