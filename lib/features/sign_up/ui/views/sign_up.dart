import 'package:doc/core/helpers/navigation_extention.dart';
import 'package:doc/core/widgets/check_for_having_accont.dart';
import 'package:doc/core/widgets/privacy_custom_Richtext.dart';
import 'package:doc/features/sign_up/ui/views/widgets/sign_up_button.dart';
import 'package:doc/features/sign_up/ui/views/widgets/signup_screen_form.dart';
import 'package:doc/features/sign_up/ui/views/widgets/signup_screen_upper_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                const SignUpScreenUpperSection(),
                const SignUpScreenForm(),
                SizedBox(height: 32.h),
                const SignUpButton(),
                SizedBox(height: 10.h),
                const PrivacyPolicyCutomRichText(),
                SizedBox(height: 24.h),
                CheckForHavingAccountWidget(
                  buttonName: "Sign In",
                  checkText: "Already have an account ?",
                  onPressed: () {
                    context.pop();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
