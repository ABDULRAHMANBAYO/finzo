import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final String icon;
  final Color color;
  final double height;
  final double width;
  final double radius;

  const CircularIcon(
      {super.key,
      required this.icon,
      required this.color,
      required this.height,
      required this.width,
      required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ReytsAssetImage(
        url: icon,
        height: height,
        width: width,
        fit: BoxFit.none,
      ),
    );
  }
}
