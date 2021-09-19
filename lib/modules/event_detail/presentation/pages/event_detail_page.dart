import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/artist.dart';
import 'package:vini_verso/modules/event_detail/domain/entities/event.dart';
import 'package:vini_verso/modules/event_detail/event_detail_strings.dart';
import 'package:vini_verso/modules/event_detail/presentation/cubit/event_detail_cubit.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/page_state.dart';
import 'package:vini_verso/shared/presentation/status.dart';

class EventDetailPage extends StatefulWidget {
  @override
  _EventDetailPageState createState() => _EventDetailPageState();
}

class _EventDetailPageState extends ModularCubitState<EventDetailPage, EventDetailCubit> {
  @override
  void initState() {
    super.initState();
    cubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(EventDetailStrings.eventTitle),
        ),
      ),
      body: BlocConsumer<EventDetailCubit, EventDetailState>(
        bloc: cubit,
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == Status.loading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            );
          } else if (state.status == Status.success && state.event != null) {
            final Event event = state.event!;
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: cubit.state.event!.imageUrl,
                      ),
                      _Header(
                        name: event.name,
                        startDate: event.startDate,
                        endDate: event.endDate,
                        place: event.place,
                        zone: event.zone,
                      ),
                      const SizedBox(height: AppDimensions.kMarginMedium),
                      _LineUp(artists: event.artists),
                      const SizedBox(height: AppDimensions.kMarginMedium),
                      _GeneralInfos(
                        capacity: event.capacity,
                        confirmed: event.confirmed,
                        interested: event.interested,
                        maxPrice: event.maxPrice,
                        minPrice: event.minPrice,
                        ticketsUrl: event.ticketsUrl,
                      ),
                      const SizedBox(height: AppDimensions.kMarginMedium),
                      _Crew(
                        name: event.crew.name,
                        rating: event.crew.rating,
                        imageUrl: event.crew.image,
                      ),
                      const SizedBox(height: AppDimensions.kMarginMedium),
                      _Description(
                        description: event.description,
                      ),
                      const SizedBox(height: AppDimensions.kMarginMedium),
                    ],
                  )
                ],
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String name;
  final DateTime startDate;
  final DateTime endDate;
  final String place;
  final String zone;

  const _Header({
    required this.name,
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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  EventDetailStrings.eventDate(startDate: startDate, endDate: endDate),
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Local',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF818181),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      place,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Região',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF818181),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      zone,
                      style: TextStyle(
                        fontSize: 14,
                      ),
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

class _LineUp extends StatelessWidget {
  final List<Artist> artists;

  const _LineUp({required this.artists});

  @override
  Widget build(BuildContext context) {
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
                return _Artist(
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

class _Artist extends StatelessWidget {
  final String name;
  final String nationality;

  const _Artist({required this.name, required this.nationality});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(width: 4),
        Image.network(
          'https://www.countryflags.io/$nationality/flat/64.png',
          height: 15,
          width: 15,
        ),
      ],
    );
  }
}

class _GeneralInfos extends StatelessWidget {
  final int capacity;
  final int interested;
  final int confirmed;
  final double minPrice;
  final double maxPrice;
  final String ticketsUrl;

  const _GeneralInfos({
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
                _Info(label: 'Lotação', value: capacity.toString()),
                _Info(label: 'Interessados', value: interested.toString()),
                _Info(label: 'Confirmados', value: confirmed.toString()),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _Info(
                  label: 'Preço',
                  value: EventDetailStrings.eventPrice(
                    minPrice: minPrice,
                    maxPrice: maxPrice,
                  ),
                ),
                _Info(
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

class _Crew extends StatelessWidget {
  final String name;
  final double rating;
  final String imageUrl;

  const _Crew({
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Organizador',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF818181),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
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

class _Description extends StatelessWidget {
  final String description;

  const _Description({required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descrição',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF818181),
              ),
            ),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class _Info extends StatelessWidget {
  final String label;
  final String value;

  const _Info({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF818181),
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
