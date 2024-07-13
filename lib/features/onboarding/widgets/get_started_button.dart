import 'package:doc/core/theme/app_colors.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.mainColor,
              fixedSize: const Size(double.infinity, 60),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
          child: Text("Get started", style: AppStyles.font16with600w),
        ),
      ),
    );
  }
}
