import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenUpperSection extends StatelessWidget {
  const LoginScreenUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50.h),
        Text("Welcome Back", style: AppStyles.fontweight700blue),
        SizedBox(height: 8.h),
        Text(
            "We're excited to have you back, can't wait to \n see what you've been up to since you last \n logged in.",
            style: AppStyles.font10with400w.copyWith(fontSize: 14.sp)),
        SizedBox(height: 36.h),
      ],
    );
  }
}
