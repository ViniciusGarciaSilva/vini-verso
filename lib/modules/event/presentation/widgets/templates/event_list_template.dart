import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/event.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_list_header_organism.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_list_tile_organism.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/molecules/search_bar_molecule.dart';

class EventListTemplate extends StatelessWidget {
  final List<Event> eventList;

  const EventListTemplate({
    required this.eventList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EventListHeaderOrganism(),
            const SizedBox(height: kMarginSmall),
            ListView.separated(
              shrinkWrap: true,
              itemCount: eventList.length,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: kMarginDefault,
                );
              },
              itemBuilder: (context, index) {
                return EventListTileOrganism(event: eventList[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
