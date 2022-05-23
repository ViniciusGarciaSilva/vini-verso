import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/artist.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_detail_artist_molecule.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventDetailLineupOrganism extends StatelessWidget {
  final List<Artist> artists;
  final int columns;

  const EventDetailLineupOrganism({
    required this.artists,
    this.columns = 2,
  });

  double getChildAspectRatio(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final childHeight = EventDetailArtistMolecule.height + 2 * kMarginDetail;
    final organismPadding = 2 * kMarginDefault;
    final organismContentWidth = screenWidth - organismPadding;
    final childWidth = organismContentWidth / columns;
    return childWidth / childHeight;
  }

  @override
  Widget build(BuildContext context) {
    if (artists.isEmpty) {
      return Container();
    } else {
      return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(kMarginDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                EventStrings.detail.lineUp,
                style: AppTextStyles.roboto.regular.size.h16.copyWith(color: AppColors.grey1),
              ),
              const SizedBox(height: kMarginDefault),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: getChildAspectRatio(context),
                crossAxisCount: columns,
                children: List.generate(artists.length, (index) {
                  var newIndex = index;
                  if (index.isOdd) {
                    newIndex = (index ~/ columns) + artists.length ~/ columns;
                  } else {
                    newIndex = (index ~/ columns);
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: kMarginDetail),
                    child: EventDetailArtistMolecule(
                      name: artists[newIndex].name,
                      nationality: artists[newIndex].nationality,
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      );
    }
  }
}
