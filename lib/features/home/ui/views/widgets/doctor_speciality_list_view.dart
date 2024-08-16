import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/features/home/data/models/doctor_peciality_item_model.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  static List<DoctorPecialityItemModel> items = [
    DoctorPecialityItemModel(
      image: Assets.assetsPngManDoctor,
      title: "General",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngBrain,
      title: "Neurologic",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngBaby,
      title: "Pediatric",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngKidneys,
      title: "Radiology",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngBrain,
      title: "Neurologic",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngBaby,
      title: "Pediatric",
    ),
    DoctorPecialityItemModel(
      image: Assets.assetsPngKidneys,
      title: "Radiology",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .asMap()
            .entries
            .map(
              (e) => e.key == 0
                  ? Padding(
                      padding: EdgeInsets.only(right: 20.w, left: 8.w),
                      child: DoctorSpecialityItem(
                        image: e.value.image,
                        title: e.value.title,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: DoctorSpecialityItem(
                        image: e.value.image,
                        title: e.value.title,
                      ),
                    ),
            )
            .toList(),
      ),
    );
  }
}
