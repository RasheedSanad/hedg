import 'package:flutter/material.dart';

class UiImageAsset extends StatelessWidget {
  const UiImageAsset(
    this.imageUrl, {
    super.key,
    this.fit,
    this.width,
    this.color,
    this.height,
  });
  final String imageUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageUrl,
      fit: fit,
      height: height,
      width: width,
      color: color,
    );
  }
}
