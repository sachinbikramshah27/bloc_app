// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardCard extends StatelessWidget {
  final String imageUrl;
  final String onboardText;
  const OnboardCard({
    super.key,
    required this.imageUrl,
    required this.onboardText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageUrl,
          height: 250.h,
          width: 250.w,
        ),
        SizedBox(height: 30.h),
        Text(
          onboardText,
          //   "Get Started with the world biggest app to explore the world. Explore the World with us. Explore the Universe with us",
          textAlign: TextAlign.center,
          style: TextStyle(

              // color: MyColors.primaryColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
