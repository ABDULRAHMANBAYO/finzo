import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnergyConsumption extends StatelessWidget {
  const EnergyConsumption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Energy consumption",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF647082),
          ),
        ),
        8.h.verticalSpace,
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: const Color(0xFFF5F6FA),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: EnergyConsumptionItem(
                          title: "Cooking gas",
                        ),
                      ),
                      const VerticalDivider(
                        width: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xFFF5F6FA),
                      ),
                      8.w.horizontalSpace,
                      const Expanded(
                        child: EnergyConsumptionItem(
                          title: "Diesel",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: const Color(0xFFF5F6FA),
                height: 0.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      const Expanded(
                        child: EnergyConsumptionItem(
                          title: "Power",
                        ),
                      ),
                      const VerticalDivider(
                        width: 20,
                        thickness: 1,
                        indent: 0,
                        endIndent: 0,
                        color: Color(0xFFF5F6FA),
                      ),
                      8.w.horizontalSpace,
                      const Expanded(
                        child: EnergyConsumptionItem(
                          title: "Data",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: const Color(0xFFF5F6FA),
                height: 0.h,
              ),
              16.h.verticalSpace,
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
              16.h.verticalSpace,
            ],
          ),
        )
      ],
    );
  }
}

class EnergyConsumptionItem extends StatelessWidget {
  final String title;
  const EnergyConsumptionItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        16.h.verticalSpace,
        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFF5F8FF),
          ),
        ),
        Text(
          "-",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        12.h.verticalSpace
      ],
    );
  }
}
