import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';

class ImageAtom extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;

  const ImageAtom({
    required this.imageUrl,
    required this.height,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      fadeOutDuration: Duration(milliseconds: 0),
      placeholder: (_, __) => Container(
        color: AppColors.shimmerBaseColor,
        height: height,
        width: width,
      ),
    );
  }
}
