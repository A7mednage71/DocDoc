import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected});

  final String? title;
  final String? image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: isSelected ? 27.r : 25.r,
          backgroundColor: Colors.lightBlue,
          child: CircleAvatar(
            radius: 25.r,
            backgroundColor: const Color(0xffF4F8FF),
            child: Center(
              child: Image.asset(
                image ?? "",
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          title ?? "No Title",
          style: AppStyles.font12with400w.copyWith(
            color: const Color(0xff242424),
            fontSize: isSelected ? 14.sp : 12.sp,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w400,
          ),
        )
      ],
    );
  }
}
