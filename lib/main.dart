import 'dart:io';
import 'package:finzo/circular_icon.dart';
import 'package:finzo/complete_verification.dart';
import 'package:finzo/energy_consumption_v2.dart';
import 'package:finzo/navbar.dart';
import 'package:finzo/quick_action.dart';
import 'package:finzo/transaction.dart';
import 'package:finzo/wallet_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (BuildContext context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                useMaterial3: true,
                appBarTheme: const AppBarTheme(
                  surfaceTintColor: Colors.white,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  iconTheme: IconThemeData(color: Colors.black),
                ),
                fontFamily: "Regola"),
            home: const MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 8.w,
        leading: const SizedBox.shrink(),
        title: Row(
          children: [
            Container(
              height: 36.h,
              width: 36.w,
              margin: EdgeInsets.only(left: 0.w),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFFE2EDFE),
                shape: BoxShape.circle,
              ),
              child: Text(
                'OB',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF095DD6),
                    fontFamily: 'Regola'),
              ),
            ),
            12.w.horizontalSpace,
            Text(
              'Hi Oluwatimilehin',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2E3C50),
                  fontFamily: 'Regola'),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: CircularIcon(
              icon: 'assets/icon/Bell.svg',
              color: const Color(0xFFF8F9FB),
              height: 36.h,
              width: 36.w,
              radius: 18.r,
            ),
          ),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              12.h.verticalSpace,
              const WalletCard(),
              24.h.verticalSpace,
              const CompleteVerification(),
              24.h.verticalSpace,
              const QuickAction(),
              24.h.verticalSpace,
              const EnergyConsumptionV2(),
              24.h.verticalSpace,
              const TransactionWidget(),
            ],
          ),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: Container(
        height: Platform.isIOS ? 85.h : 80.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4FA).withOpacity(0.4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        padding:
            EdgeInsets.only(left: 18.w, right: 18.w, bottom: 0.h, top: 8.h),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavBarItem(
              label: "Home",
              icon: "assets/icon/Home.svg",
            ),
            NavBarItem(
              label: "Requests",
              icon: "assets/icon/reqeust.svg",
            ),
            NavBarItem(
              label: "Services",
              icon: "assets/icon/Server.svg",
            ),
            NavBarItem(
              label: "Account",
              icon: "assets/icon/User - Square.svg",
            ),
          ],
        ),
      ),
    );
  }
}
