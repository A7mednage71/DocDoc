import 'package:doc/core/theme/app_styles.dart';
import 'package:doc/features/onboarding/widgets/doctor_and_background_section.dart';
import 'package:doc/features/onboarding/widgets/get_started_button.dart';
import 'package:doc/features/onboarding/widgets/logo_name_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            children: [
              const LogoNameSection(),
              SizedBox(height: 40.h),
              const DoctorImageAndBackgoundSection(),
              SizedBox(height: 18.h),
              Text(
                "Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",
                style: AppStyles.font10with400w,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32.h),
              const GetStartedButton()
            ],
          ),
        ),
      ),
    );
  }
}
