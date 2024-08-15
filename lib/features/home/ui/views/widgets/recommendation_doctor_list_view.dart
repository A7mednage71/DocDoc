import 'package:doc/features/home/ui/views/widgets/recomendation_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendationDoctorListItemListView extends StatelessWidget {
  const RecomendationDoctorListItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: const RecomendationDoctorListItem(),
          );
        },
      ),
    );
  }
}
