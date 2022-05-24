import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';
import 'package:vini_verso/shared/presentation/app_dimensions.dart';
import 'package:vini_verso/shared/presentation/app_text_styles.dart';

class SearchBarMolecule extends StatelessWidget {
  final String hint;

  const SearchBarMolecule({
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.grey2,
          width: 0.5,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kMarginDefault,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          // enabledBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: AppColors.grey2),
          // ),
          // focusedBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: AppColors.grey2),
          // ),
          hintText: hint,
          hintStyle: AppTextStyles.roboto.regular.size.h14.copyWith(
            color: AppColors.grey2,
          ),
        ),
      ),
    );
  }
}
