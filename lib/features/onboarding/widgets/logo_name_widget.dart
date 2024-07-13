import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoNameSection extends StatelessWidget {
  const LogoNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/Frame.svg'),
        SizedBox(width: 8.w),
        Text(
          "DocDoc",
          style: AppStyles.font24Black700weight,
        )
      ],
    );
  }
}
