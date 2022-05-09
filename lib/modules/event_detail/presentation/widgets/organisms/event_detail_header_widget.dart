import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/atoms/event_name_atom.dart';
import 'package:vini_verso/shared/configs/app_configs.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';
import 'package:vini_verso/shared/presentation/widgets/atoms/image_atom.dart';
import 'package:vini_verso/shared/presentation/widgets/molecules/label_value_molecule.dart';

class EventDetailHeaderWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;

  const EventDetailHeaderWidget({
    required this.name,
    required this.imageUrl,
    required this.startDate,
    required this.endDate,
    required this.place,
    required this.zone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          ImageAtom(
            imageUrl: imageUrl,
            height: MediaQuery.of(context).size.width * bannerHeightScale,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(kMarginDefault),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EventNameAtom(name: name),
                const SizedBox(height: kMarginSmall),
                Text(
                  EventDetailStrings.eventDate(startDate: startDate, endDate: endDate),
                  style: AppTextStyles.roboto.regular.size.h14,
                ),
                const SizedBox(height: kMarginDefault),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: LabelValueMolecule(
                        label: 'Local',
                        value: place,
                      ),
                    ),
                    const SizedBox(height: kMarginDetail),
                    Expanded(
                      child: LabelValueMolecule(
                        label: 'Região',
                        value: zone,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
