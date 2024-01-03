import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transactions",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF647082),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF095DD6),
                  ),
                ),
                const ReytsAssetImage(url: "assets/icon/Chevron - Right.svg")
              ],
            ),
            // Container(
            //   height: 29.h,
            //   width: 66.w,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //     color: const Color(0xFFE4EFFF),
            //     borderRadius: BorderRadius.circular(8.r),
            //   ),
            //   child: Text(
            //     "See all",
            //     style: TextStyle(
            //       fontSize: 14.sp,
            //       fontWeight: FontWeight.w600,
            //       color: const Color(0xFF095DD6),
            //     ),
            //   ),
            // )
          ],
        ),
        36.h.verticalSpace,
        const ReytsAssetImage(url: "assets/icon/Comment.svg"),
        9.h.verticalSpace,
        Text(
          "No transaction history",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF021531),
          ),
        ),
        4.h.verticalSpace,
        Text(
          "You have no transaction history yet",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF6F7C90),
          ),
        ),
        8.h.verticalSpace,
      ],
    );
  }
}
