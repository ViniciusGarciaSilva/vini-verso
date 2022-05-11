import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class EventNameAtom extends StatelessWidget {
  final String name;
  final bool loading;

  const EventNameAtom({
    required this.name,
    this.loading = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppTextStyles.roboto.bold.size.h24,
    );
  }
}
