import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class LabelValueMolecule extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? labelStyle;
  final TextStyle? valueStyle;

  const LabelValueMolecule({
    required this.label,
    required this.value,
    this.labelStyle,
    this.valueStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: labelStyle ??
              AppTextStyles.roboto.regular.size.h16.copyWith(
                color: AppColors.grey1,
              ),
        ),
        const SizedBox(height: kMarginDetail),
        Text(
          value,
          style: valueStyle ?? AppTextStyles.roboto.regular.size.h16.copyWith(),
        ),
      ],
    );
  }
}
