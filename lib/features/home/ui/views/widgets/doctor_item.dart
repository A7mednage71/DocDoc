import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem({super.key, required this.doctor});
  final DoctorModel? doctor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DoctorCachedNetworkImage(),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Dr. ${doctor?.name ?? "No Name"}",
                  style: AppStyles.interBold18.copyWith(fontSize: 16.sp)),
              SizedBox(height: 8.h),
              Text(
                  " ${doctor?.degree ?? "No Degree"}  |   ${doctor?.phone ?? "No Phone"}",
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
