import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/organisms/event_detail_crew_widget.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/organisms/event_detail_description_widget.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/organisms/event_detail_general_infos_widget.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/organisms/event_detail_header_widget.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/organisms/event_detail_lineup_widget.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';

class EventDetailTemplateWidget extends StatelessWidget {
  final Event event;

  const EventDetailTemplateWidget({required this.event});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          EventDetailHeaderWidget(
            name: event.name,
            imageUrl: event.imageUrl,
            startDate: event.startDate,
            endDate: event.endDate,
            place: event.place,
            zone: event.zone,
          ),
          const SizedBox(height: AppDimensions.kMarginMedium),
          EventDetailLineupWidget(artists: event.artists),
          const SizedBox(height: AppDimensions.kMarginMedium),
          EventDetailGeneralInfosWidget(
            capacity: event.capacity,
            confirmed: event.confirmed,
            interested: event.interested,
            maxPrice: event.maxPrice,
            minPrice: event.minPrice,
            ticketsUrl: event.ticketsUrl,
          ),
          const SizedBox(height: AppDimensions.kMarginMedium),
          EventDetailCrewWidget(
            name: event.crew.name,
            rating: event.crew.rating,
            imageUrl: event.crew.image,
          ),
          const SizedBox(height: AppDimensions.kMarginMedium),
          EventDetailDescriptionWidget(
            description: event.description,
          ),
          const SizedBox(height: AppDimensions.kMarginMedium),
        ],
      ),
    );
  }
}
