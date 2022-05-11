import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/event_strings.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventDetailDescriptionWidget extends StatelessWidget {
  final String description;

  const EventDetailDescriptionWidget({required this.description});

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
              EventStrings.detail.description,
              style: AppTextStyles.roboto.regular.size.h16.copyWith(color: AppColors.grey1),
            ),
            const SizedBox(height: kMarginDefault),
            Text(
              description,
              style: AppTextStyles.roboto.regular.size.h14,
            ),
          ],
        ),
      ),
    );
  }
}
