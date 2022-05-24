import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vini_verso/shared/presentation/app_colors.dart';

class ImageAtom extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;

  const ImageAtom({
    required this.imageUrl,
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      height: height,
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
