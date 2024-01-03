import 'package:finzo/reyts_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletCard extends StatefulWidget {
  const WalletCard({super.key});

  @override
  State<WalletCard> createState() => _WalletCardState();
}

class _WalletCardState extends State<WalletCard> {
  bool isAccountBalanceVisible = false;

  toggleAccountBalanceVisible() {
    setState(() {
      isAccountBalanceVisible = !isAccountBalanceVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF095DD6),
        borderRadius: BorderRadius.circular(8.r),
        image: const DecorationImage(
          image: AssetImage("assets/icon/ripple.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          16.h.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Available balance",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFB0CFFC),
                ),
              ),
              InkWell(
                onTap: toggleAccountBalanceVisible,
                child: ReytsAssetImage(
                  url: !isAccountBalanceVisible
                      ? "assets/icon/Eye.svg"
                      : "assets/icon/Eye - Slash.svg",
                  height: 20.h,
                  width: 20.w,
                ),
              ),
            ],
          ),
          Visibility(
            visible: isAccountBalanceVisible,
            replacement: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '****',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                )
                // Padding(
                //   padding: EdgeInsets.only(top: 4.h),
                //   child: Row(
                //       children: List.generate(
                //     3,
                //     (index) => ReytsAssetImage(
                //       url: "assets/icon/hide_balance.svg",
                //       height: 10.h,
                //       width: 10.w,
                //     ),
                //   )),
                // )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "₦650,000.00",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                6.w.horizontalSpace,
              ],
            ),
          ),
          4.h.verticalSpace,
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 75.w),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.04),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wema bank",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFC4DBFD),
                    ),
                  ),
                  2.w.horizontalSpace,
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFC4DBFD),
                    ),
                  ),
                  2.w.horizontalSpace,
                  Text(
                    "0124256789",
                    style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFC4DBFD),
                    ),
                  ),
                  6.w.horizontalSpace,
                  InkWell(
                    onTap: () {
                      SnackBar snackBar = SnackBar(
                        backgroundColor: const Color(0xFF008753),
                        behavior: SnackBarBehavior.floating,
                        dismissDirection: DismissDirection.horizontal,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        margin: EdgeInsets.only(
                            bottom: 625.0.h, left: 20.w, right: 20.w),
                        content: Text(
                          "Account number copied to clipboard.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Regola'),
                        ),
                        showCloseIcon: false,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Clipboard.setData(
                        const ClipboardData(text: "0124256789"),
                      );
                    },
                    child: ReytsAssetImage(
                      url: "assets/icon/copy.svg",
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          16.h.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      minimumSize: Size(149.w, 40.h),
                      backgroundColor: Colors.white.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    onPressed: () {},
                    icon: ReytsAssetImage(
                      url: "assets/icon/Arrow - Top Right.svg",
                      height: 20.h,
                      width: 20.w,
                    ),
                    label: Text(
                      "Send money",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                12.w.horizontalSpace,
                Expanded(
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      minimumSize: Size(149.w, 40.h),
                      backgroundColor: const Color(0xFFCCE6FF),
                      // Colors.white.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    onPressed: () {},
                    icon: ReytsAssetImage(
                      url: "assets/icon/Plus.svg",
                      height: 20.h,
                      width: 20.w,
                    ),
                    label: Text(
                      "Add money",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF095DD6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          16.h.verticalSpace
        ],
      ),
    );
  }
}
