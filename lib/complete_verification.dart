import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteVerification extends StatelessWidget {
  const CompleteVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color(0xFFF5F6FA),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ReytsAssetImage(url: "assets/icon/alert.svg"),
          12.w.horizontalSpace,
          Expanded(
            // padding: EdgeInsets.only(right: 20.w),
            child: RichText(
              text: TextSpan(
                text: "Complete verification to have a seamless experience.",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF647082),
                  height: 1.2.h,
                ),
                children: [
                  TextSpan(
                    text: " Click here",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF3B5CB8),
                      height: 1.2.h,
                    ),
                  ),
                ],
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
