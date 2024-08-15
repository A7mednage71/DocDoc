import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class DoctorCustomRowWidget extends StatelessWidget {
  const DoctorCustomRowWidget({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: AppStyles.interBold18),
        TextButton(
          onPressed: onPressed,
          child: Text("See All", style: AppStyles.font12with400w),
        )
      ],
    );
  }
}
