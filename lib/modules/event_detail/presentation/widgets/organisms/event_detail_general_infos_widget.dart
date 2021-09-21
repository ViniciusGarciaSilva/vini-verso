import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/molecules/event_detail_info_widget.dart';

class EventDetailGeneralInfosWidget extends StatelessWidget {
  final int capacity;
  final int interested;
  final int confirmed;
  final double minPrice;
  final double maxPrice;
  final String ticketsUrl;

  const EventDetailGeneralInfosWidget({
    required this.capacity,
    required this.interested,
    required this.confirmed,
    required this.minPrice,
    required this.maxPrice,
    required this.ticketsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventDetailInfoWidget(label: 'Lotação', value: capacity.toString()),
                EventDetailInfoWidget(label: 'Interessados', value: interested.toString()),
                EventDetailInfoWidget(label: 'Confirmados', value: confirmed.toString()),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EventDetailInfoWidget(
                  label: 'Preço',
                  value: EventDetailStrings.eventPrice(
                    minPrice: minPrice,
                    maxPrice: maxPrice,
                  ),
                ),
                EventDetailInfoWidget(
                  label: 'Ingressos',
                  value: ticketsUrl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
