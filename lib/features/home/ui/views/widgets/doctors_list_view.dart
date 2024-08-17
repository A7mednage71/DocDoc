import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView(
      {super.key, this.doctors});
  final List<DoctorModel?>? doctors;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: doctors!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: DoctorListItem(
              doctor: doctors?[index],
            ),
          );
        },
      ),
    );
  }
}
