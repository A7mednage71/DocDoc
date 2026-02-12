import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem(
      {super.key, required this.isSelected, this.specializationItem});

  final bool isSelected;
  final SpecializationItem? specializationItem;
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
                Assets.assetsPngBaby ?? "",
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          specializationItem?.name ?? "No Title",
          style: AppStyles.font12with400w.copyWith(
            color: const Color(0xff242424),
            fontSize: isSelected ? 14.sp : 12.sp,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
          ),
        )
      ],
    );
  }
}
