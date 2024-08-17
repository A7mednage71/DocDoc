import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_item.dart';
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.allSpecializationData!
            .asMap()
            .entries
            .map(
              (e) => Padding(
                padding: e.key == 0
                    ? EdgeInsets.only(right: 20.w, left: 8.w)
                    : EdgeInsets.symmetric(horizontal: 20.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = e.key;
                    });
                    context.read<HomeCubit>().getDoctorsList(
                        specializationId:
                            widget.allSpecializationData?[selectedIndex]?.id);
                  },
                  child: DoctorSpecialityItem(
                    image: Assets.assetsPngBaby,
                    title: e.value?.name,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
