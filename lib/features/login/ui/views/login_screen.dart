import 'package:doc/features/login/ui/views/widgets/check_for_having_accont.dart';
import 'package:doc/features/login/ui/views/widgets/forget_password_button.dart';
import 'package:doc/features/login/ui/views/widgets/login_button.dart';
import 'package:doc/features/login/ui/views/widgets/login_screen_form.dart';
import 'package:doc/features/login/ui/views/widgets/login_screen_upper_section.dart';
import 'package:doc/features/login/ui/views/widgets/privacy_custom_Richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LoginScreenUpperSection(),
                const LoginScreenForm(),
                SizedBox(height: 15.h),
                const ForgetPasswordButton(),
                SizedBox(height: 32.h),
                const LoginButton(),
                SizedBox(height: 10.h),
                const PrivacyPolicyCutomRichText(),
                SizedBox(height: 24.h),
                const CheckForHavingAccountWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
