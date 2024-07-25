import 'package:doc/core/helpers/navigation_extention.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/core/widgets/app_custom_button.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:doc/features/login/ui/views/widgets/check_for_having_accont.dart';
import 'package:doc/features/login/ui/views/widgets/forget_password_button.dart';
import 'package:doc/features/login/ui/views/widgets/login_screen_form.dart';
import 'package:doc/features/login/ui/views/widgets/login_screen_upper_section.dart';
import 'package:doc/features/login/ui/views/widgets/privacy_custom_Richtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                SizedBox(height: 25.h),
                const ForgetPasswordButton(),
                SizedBox(height: 32.h),
                AppCustomButton(
                  onPressed: () {
                    validate(context);
                  },
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
      ),
    );
  }

  void validate(BuildContext context) {
    if (context.read<LoginCubit>().key.currentState!.validate()) {
      context.read<LoginCubit>().login(
            loginRequestBody: LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
      context.pushNamed(Routes.homeView);
    } else {}
  }
}
