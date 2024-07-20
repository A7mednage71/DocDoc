import 'package:doc/core/widgets/app_custom_button.dart';
import 'package:doc/core/widgets/app_text_form_field.dart';
import 'package:doc/features/login/ui/widgets/check_for_having_accont.dart';
import 'package:doc/features/login/ui/widgets/forget_password_button.dart';
import 'package:doc/features/login/ui/widgets/login_screen_upper_section.dart';
import 'package:doc/features/login/ui/widgets/privacy_custom_Richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  bool obsecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginScreenUpperSection(),
              Form(
                key: key,
                autovalidateMode: autovalidateMode,
                child: Column(
                  children: [
                    const AppTextFormField(hint: "Email"),
                    SizedBox(height: 16.h),
                    AppTextFormField(
                      hint: "Password",
                      obsecure: obsecured,
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            obsecured = !obsecured;
                          });
                        },
                        child: Icon(obsecured
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              const ForgetPasswordButton(),
              SizedBox(height: 32.h),
              AppCustomButton(
                onPressed: () {},
                text: "Login",
              ),
              SizedBox(height: 90.h),
              const PrivacyPolicyCutomRichText(),
              SizedBox(height: 24.h),
              const CheckForHavingAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}
