import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/event_banner.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_list_header_organism.dart';
import 'package:vini_verso/modules/event/presentation/widgets/organisms/event_list_tile_organism.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';

class EventListTemplate extends StatelessWidget {
  final List<EventBanner> eventList;
  final void Function(int id) onTap;

  const EventListTemplate({
    required this.eventList,
    required this.onTap,
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
                return EventListTileOrganism(
                  event: eventList[index],
                  onTap: onTap,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
