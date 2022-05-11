import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_detail_crew_organism.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_detail_description_widget.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_detail_general_infos_organism.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_detail_header_organism.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_detail_line_up_organism.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/atoms/image_atom.dart';

class EventDetailTemplateWidget extends StatelessWidget {
  final Event event;

  const EventDetailTemplateWidget({required this.event});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          expandedHeight: MediaQuery.of(context).size.width,
          flexibleSpace: FlexibleSpaceBar(
            background: ImageAtom(
              imageUrl: event.imageUrl,
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              EventDetailHeaderOrganism(
                name: event.name,
                imageUrl: event.imageUrl,
                startDate: event.startDate,
                endDate: event.endDate,
                place: event.place,
                zone: event.zone,
              ),
              const SizedBox(height: kMarginDefault),
              EventDetailLineupOrganism(artists: event.artists),
              const SizedBox(height: kMarginDefault),
              EventDetailGeneralInfosOrganism(
                capacity: event.capacity,
                confirmed: event.confirmed,
                interested: event.interested,
                maxPrice: event.maxPrice,
                minPrice: event.minPrice,
                ticketsUrl: event.ticketsUrl,
              ),
              const SizedBox(height: kMarginDefault),
              EventDetailCrewOrganism(
                name: event.crew.name,
                rating: event.crew.rating,
                imageUrl: event.crew.image,
              ),
              const SizedBox(height: kMarginDefault),
              EventDetailDescriptionWidget(
                description: event.description,
              ),
              const SizedBox(height: kMarginDefault),
            ],
          ),
        ),
      ],
    );
  }
}
