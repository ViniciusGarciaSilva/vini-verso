import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventDetailArtistMolecule extends StatelessWidget {
  final String name;
  final String nationality;

  const EventDetailArtistMolecule({required this.name, required this.nationality});

  static const height = 21.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Row(
        children: [
          Text(
            name,
            style: AppTextStyles.roboto.regular.size.h14,
          ),
          const SizedBox(width: kMarginDetail),
          CachedNetworkImage(
            imageUrl: 'https://countryflagsapi.com/png/$nationality',
            height: 15,
            width: 15,
          ),
        ],
      ),
    );
  }
}
