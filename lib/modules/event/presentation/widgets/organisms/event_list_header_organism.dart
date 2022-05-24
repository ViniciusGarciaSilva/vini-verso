import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/widgets/molecules/search_bar_molecule.dart';

class EventListHeaderOrganism extends StatelessWidget {
  const EventListHeaderOrganism({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kMarginDefault),
      color: Colors.white,
      child: SearchBarMolecule(hint: 'Pesquisar evento'),
    );
  }
}
