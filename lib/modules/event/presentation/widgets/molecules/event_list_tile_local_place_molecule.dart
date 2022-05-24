import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventListTileLocalPlaceMolecule extends StatelessWidget {
  final String place;
  final String zone;

  const EventListTileLocalPlaceMolecule({
    required this.place,
    required this.zone,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          place,
          style: AppTextStyles.roboto.regular.size.h14.copyWith(
            color: AppColors.grey1,
          ),
        ),
        Text(
          zone,
          style: AppTextStyles.roboto.regular.size.h14.copyWith(
            color: AppColors.grey1,
          ),
        ),
      ],
    );
  }
}
