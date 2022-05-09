import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/artist.dart';
import 'package:vini_verso/modules/event_detail/presentation/widgets/molecules/event_detail_artist_widget.dart';

class EventDetailLineupWidget extends StatelessWidget {
  final List<Artist> artists;

  const EventDetailLineupWidget({required this.artists});

  @override
  Widget build(BuildContext context) {
    if (artists.length == 0) {
      return Container();
    }
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Line Up',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF818181),
              ),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                childAspectRatio: artists.length / 2,
              ),
              itemBuilder: (context, index) {
                var newIndex = index;
                if (index.isOdd) {
                  newIndex = (index ~/ 2) + artists.length ~/ 2;
                } else {
                  newIndex = (index ~/ 2);
                }
                return EventDetailArtistWidget(
                  name: artists[newIndex].name,
                  nationality: artists[newIndex].nationality,
                );
              },
              itemCount: artists.length,
            ),
          ],
        ),
      ),
    );
  }
}
