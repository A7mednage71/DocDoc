import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem(
      {super.key, required this.title, required this.image});

  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: const Color(0xffF4F8FF),
          child: Center(
            child: Image.asset(
              image,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          title,
          style:
              AppStyles.font12with400w.copyWith(color: const Color(0xff242424)),
        )
      ],
    );
  }
}
