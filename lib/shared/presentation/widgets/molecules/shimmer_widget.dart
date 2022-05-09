import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  final bool loading;
  final Color? baseColor;
  final Color? highlightColor;
  final Widget? placeholder;
  final double? height;
  final double? width;
  final double? borderRadius;

  ShimmerWidget({
    required this.child,
    required this.loading,
    this.baseColor,
    this.highlightColor,
    this.height,
    this.width,
    this.borderRadius,
    this.placeholder,
    Key? key,
  }) : super(key: key) {
    if ((height != null) ^ (width != null)) {
      throw 'Height and Width should be provided together';
    }
    if (((height == null) || (width == null)) && (placeholder == null)) {
      throw 'A placeholder or the placeholder size should be provided';
    }
    if ((height != null) && (width != null) && (placeholder != null)) {
      throw 'You should provide a placeholder or the placeholder size, not both';
    }
    if ((borderRadius != null) && (placeholder != null)) {
      throw 'You should provide a borderRadius only if the placeholder was not provided';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Shimmer.fromColors(
        baseColor: baseColor ?? AppColors.shimmerBaseColor,
        highlightColor: highlightColor ?? AppColors.shimmerHightlightColor,
        period: Duration(milliseconds: 2000),
        child: placeholder ??
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(borderRadius ?? 6),
              ),
            ),
      );
    } else {
      return child;
    }
  }
}
