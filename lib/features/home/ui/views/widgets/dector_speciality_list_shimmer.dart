import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityListViewLoadingShimmer extends StatefulWidget {
  const SpecialityListViewLoadingShimmer({super.key});

  @override
  State<SpecialityListViewLoadingShimmer> createState() =>
      _SpecialityListViewLoadingShimmerState();
}

class _SpecialityListViewLoadingShimmerState
    extends State<SpecialityListViewLoadingShimmer> {
  bool isSelected = false;
  final List<SpecializationItem?>? allSpecializationData = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: index == 0
                  ? EdgeInsets.only(right: 10.w, left: 8.w)
                  : EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: const Color(0xFFC2C2C2),
                    highlightColor: Colors.white,
                    child: CircleAvatar(
                      radius: isSelected ? 27.r : 25.r,
                      child: CircleAvatar(
                        radius: 25.r,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Shimmer.fromColors(
                    baseColor: const Color(0xFFC2C2C2),
                    highlightColor: Colors.white,
                    child: Container(
                      height: 10.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
