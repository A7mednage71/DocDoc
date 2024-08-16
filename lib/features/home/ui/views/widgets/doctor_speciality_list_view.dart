import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key, this.allSpecializationData});
  final List<SpecializationItem>? allSpecializationData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: allSpecializationData!
            .asMap()
            .entries
            .map(
              (e) => e.key == 0
                  ? Padding(
                      padding: EdgeInsets.only(right: 20.w, left: 8.w),
                      child: DoctorSpecialityItem(
                        image: Assets.assetsPngBaby,
                        title: e.value.name!,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: DoctorSpecialityItem(
                        image: Assets.assetsPngBaby,
                        title: e.value.name!,
                      ),
                    ),
            )
            .toList(),
      ),
    );
  }
}
