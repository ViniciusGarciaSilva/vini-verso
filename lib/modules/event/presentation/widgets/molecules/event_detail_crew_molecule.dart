import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventDetailCrewMolecule extends StatelessWidget {
  final String name;
  final double rating;
  final String imageUrl;

  const EventDetailCrewMolecule({
    required this.name,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(kMarginDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              EventStrings.detail.crew,
              style: AppTextStyles.roboto.regular.size.h16.copyWith(color: AppColors.grey1),
            ),
            const SizedBox(height: kMarginDefault),
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 75,
                  height: 75,
                  errorWidget: (context, url, error) => Container(),
                ),
                const SizedBox(width: kMarginSmall),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: AppTextStyles.roboto.regular.size.h18),
                    const SizedBox(height: kMarginSmall),
                    RatingBarIndicator(
                      rating: rating,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      unratedColor: Colors.amber.withAlpha(50),
                      direction: Axis.horizontal,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
