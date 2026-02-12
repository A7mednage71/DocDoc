import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsListShimmer extends StatelessWidget {
  const DoctorsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: const Color(0xFFC2C2C2),
                    highlightColor: Colors.white,
                    child: Container(
                      width: 110.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: const Color(0xFFC2C2C2),
                          highlightColor: Colors.white,
                          child: Container(
                            width: 160.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Shimmer.fromColors(
                          baseColor: const Color(0xFFC2C2C2),
                          highlightColor: Colors.white,
                          child: Container(
                            width: 140.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Shimmer.fromColors(
                          baseColor: const Color(0xFFC2C2C2),
                          highlightColor: Colors.white,
                          child: Container(
                            width: 140.w,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}
