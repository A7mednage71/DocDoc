import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendationDoctorListItem extends StatelessWidget {
  const RecomendationDoctorListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.assetsPngDrRandy,
          width: 110.w,
          height: 110.h,
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dr. Randy Wigham",
                  style: AppStyles.interBold18.copyWith(fontSize: 16.sp)),
              SizedBox(height: 8.h),
              Text("General  |  RSUD Gatot Subroto",
                  style: AppStyles.fontweightInter500),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Image.asset(Assets.assetsPngMagicStar),
                  Text(" 4.8 (4,279 reviews)",
                      style: AppStyles.fontweightInter500)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
