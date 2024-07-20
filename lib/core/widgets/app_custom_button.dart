import 'package:doc/core/theme/app_colors.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  const AppCustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.mainColor,
            fixedSize: const Size(double.infinity, 60),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)))),
        child: Text(text, style: AppStyles.font16with600w),
      ),
    );
  }
}
