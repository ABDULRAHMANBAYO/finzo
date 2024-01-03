import 'package:finzo/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActionItem extends StatelessWidget {
  final Widget icon;
  final String title;
  const QuickActionItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color(0xFFF5F6FA),
        ),
      ),
      child: Row(
        children: [
          icon,
          8.w.horizontalSpace,
          Text(
            title,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E3C50),
            ),
          ),
        ],
      ),
    );
  }
}

class QuickAction extends StatelessWidget {
  const QuickAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Quick Actions",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF647082),
          ),
        ),
        8.h.verticalSpace,
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: QuickActionItem(
                    icon: CircularIcon(
                      icon: 'assets/icon/Gas.svg',
                      color: const Color(0xFFF5F5FF),
                      height: 32.h,
                      width: 32.w,
                      radius: 8.r,
                    ),
                    title: "Order Gas",
                  ),
                ),
                12.h.horizontalSpace,
                Expanded(
                  child: QuickActionItem(
                    icon: CircularIcon(
                      icon: 'assets/icon/petrol.svg',
                      color: const Color(0xFFFDF9E7),
                      height: 32.h,
                      width: 32.w,
                      radius: 8.r,
                    ),
                    title: "Order Diesel",
                  ),
                ),
              ],
            ),
            12.h.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: QuickActionItem(
                    icon: CircularIcon(
                      icon: 'assets/icon/Smartphone.svg',
                      color: const Color(0xFFFFF5F5),
                      height: 32.h,
                      width: 32.w,
                      radius: 8.r,
                    ),
                    title: "Buy Airtime",
                  ),
                ),
                12.h.horizontalSpace,
                Expanded(
                  child: QuickActionItem(
                    icon: CircularIcon(
                      icon: 'assets/icon/Receipt.svg',
                      color: const Color(0xFFF5F9FF),
                      height: 32.h,
                      width: 32.w,
                      radius: 8.r,
                    ),
                    title: "Pay Bills",
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
