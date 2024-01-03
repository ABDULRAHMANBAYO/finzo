import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarItem extends StatelessWidget {
  final String label;
  final String icon;

  const NavBarItem({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReytsAssetImage(
          url: icon,
          height: 24.h,
          width: 24.w,
          fit: BoxFit.none,
        ),
        2.h.verticalSpace,
        Text(
          label,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w300,
            color: Color(label == "Home" ? 0xFF095DD6 : 0xFF7D899B),
          ),
        ),
      ],
    );
  }
}
