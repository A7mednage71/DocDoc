import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindNearByWidget extends StatelessWidget {
  const FindNearByWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 167.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Assets.assetsPngNurseBackground),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 12.h, left: 18.w, bottom: 15.h, right: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and \nschedule with \nnearest doctor",
                  style: AppStyles.interMeduim18,
                ),
                SizedBox(height: 15.h),
                Container(
                  height: 38.h,
                  width: 109.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(48)),
                  ),
                  child: Center(
                      child: Text(
                    "Find Nearby",
                    style: AppStyles.font12with400w,
                  )),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            top: -35.h,
            right: 15.w,
            child: Image.asset(Assets.assetsPngNurseImage),
          )
        ],
      ),
    );
  }
}
