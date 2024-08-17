import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatefulWidget {
  const DoctorSpecialityListView({super.key, this.allSpecializationData});
  final List<SpecializationItem?>? allSpecializationData;

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.allSpecializationData?.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                context.read<HomeCubit>().getDoctorsList(
                    specializationId:
                        widget.allSpecializationData?[selectedIndex]?.id);
              },
              child: Padding(
                padding: index == 0
                    ? EdgeInsets.only(right: 10.w, left: 8.w)
                    : EdgeInsets.symmetric(horizontal: 10.w),
                child: DoctorSpecialityItem(
                  specializationItem: widget.allSpecializationData?[index],
                  isSelected: selectedIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
