import 'package:flutter/material.dart';
import 'package:vini_verso/modules/event/domain/entities/crew.dart';
import 'package:vini_verso/modules/event/presentation/widgets/molecules/event_detail_crew_molecule.dart';

class EventDetailCrewsOrganism extends StatelessWidget {
  final List<Crew> crewList;

  const EventDetailCrewsOrganism({
    required this.crewList,
  });

  @override
  Widget build(BuildContext context) {
    return EventDetailCrewMolecule(
      name: crewList[0].name,
      rating: crewList[0].rating,
      imageUrl: crewList[0].image,
    );

    // return ListView.builder(
    //   itemCount: crewList.length,
    //   itemBuilder: (context, index) {
    //     return EventDetailCrewMolecule(
    //       name: crewList[index].name,
    //       rating: crewList[index].rating,
    //       imageUrl: crewList[index].image,
    //     );
    //   },
    // );
  }
}
