import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendationDoctorListItem extends StatelessWidget {
  const RecomendationDoctorListItem({super.key, required this.doctor});
  final DoctorModel doctor;
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
              Text("Dr. ${doctor.name}",
                  style: AppStyles.interBold18.copyWith(fontSize: 16.sp)),
              SizedBox(height: 8.h),
              Text(" ${doctor.degree}  |   ${doctor.phone}",
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
