import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnergyConsumptionV2 extends StatelessWidget {
  const EnergyConsumptionV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Energy consumption",
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
                  "See analytics",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF095DD6),
                  ),
                ),
                const ReytsAssetImage(url: "assets/icon/Chevron - Right.svg")
              ],
            ),
          ],
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 12.h),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: const Color(0xFFF5F6FA),
            ),
          ),
          child: Column(
            children: [
              const EnergyConsumptionItem(
                title: "Cooking gas",
                daysLeft: "-",
                percentageLeft: 0,
                baseColor: Color(0xFFF5F8FF),
                percentageColor: Color(0xFF095DD6),
              ),
              16.h.verticalSpace,
              const EnergyConsumptionItem(
                title: "Diesel",
                daysLeft: "24",
                percentageLeft: 0,
                baseColor: Color(0xFFF5F8FF),
                percentageColor: Color(0xFF095DD6),
              ),
              16.h.verticalSpace,
              const EnergyConsumptionItem(
                title: "Power",
                daysLeft: "12",
                percentageLeft: 0,
                baseColor: Color(0xFFF5F8FF),
                percentageColor: Color(0xFFFFB92D),
              ),
              16.h.verticalSpace,
              const EnergyConsumptionItem(
                title: "Data",
                daysLeft: "3",
                percentageLeft: 0,
                baseColor: Color(0xFFF5F8FF),
                percentageColor: Color(0xFFCB010B),
              )
            ],
          ),
        )
      ],
    );
  }
}

// class EnergyConsumptionItem extends StatelessWidget {
//   final String title, daysLeft;
//   final num percentageLeft;
//   final Color baseColor;
//   final Color percentageColor;
//   const EnergyConsumptionItem(
//       {super.key,
//       required this.title,
//       required this.daysLeft,
//       required this.percentageLeft,
//       required this.baseColor,
//       required this.percentageColor});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           width: 74.w,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 12.sp,
//                   fontWeight: FontWeight.w400,
//                   color: const Color(0xFF6F7C90),
//                 ),
//               ),
//               Text(
//                 percentageLeft == 0 ? "-" : "$daysLeft days left",
//                 style: TextStyle(
//                   fontSize: 12.sp,
//                   fontWeight: FontWeight.w500,
//                   color: const Color(0xFF021531),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         41.w.horizontalSpace,
//         Expanded(
//           flex: 2,
//           child: Stack(
//             children: [
//               Container(
//                 height: 14.h,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: baseColor,
//                 ),
//               ),
//               Container(
//                 height: 14.h,
//                 width: percentageLeft == 0 ? 0 : (percentageLeft / 100) * 100.w,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20.r),
//                   color: percentageColor,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

class EnergyConsumptionItem extends StatelessWidget {
  final String title, daysLeft;
  final num percentageLeft;
  final Color baseColor;
  final Color percentageColor;
  const EnergyConsumptionItem(
      {super.key,
      required this.title,
      required this.daysLeft,
      required this.percentageLeft,
      required this.baseColor,
      required this.percentageColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: const Color(0xFFF5F8FF),
          ),
        ),
        Container(
          height: 50.h,
          width: percentageLeft == 0
              ? 0
              : (percentageLeft / 100) * MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              bottomLeft: Radius.circular(8.r),
              topRight: Radius.circular(percentageLeft == 100 ? 8.r : 0.r),
              bottomRight: Radius.circular(percentageLeft == 100 ? 8.r : 0.r),
            ),
            color: const Color(0xFFEBF1FF),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              8.h.verticalSpace,
              Text(
                title,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF6F7C90),
                ),
              ),
              Text(
                percentageLeft == 0 ? "-" : "$daysLeft days left",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF021531),
                ),
              ),
              8.h.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
