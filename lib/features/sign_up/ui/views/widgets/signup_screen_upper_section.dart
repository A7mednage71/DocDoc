import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreenUpperSection extends StatelessWidget {
  const SignUpScreenUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50.h),
        Text("Create Account", style: AppStyles.fontweight700blue),
        SizedBox(height: 8.h),
        Text(
            "Sign up now and start exploring all that our \napp has to offer. We're excited to welcome \nyou to our community!",
            style: AppStyles.font10with400w.copyWith(fontSize: 14.sp)),
        SizedBox(height: 36.h),
      ],
    );
  }
}
