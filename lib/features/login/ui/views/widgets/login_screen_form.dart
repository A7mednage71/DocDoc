import 'package:doc/core/helpers/my_validators.dart';
import 'package:doc/core/widgets/app_text_form_field.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenForm extends StatefulWidget {
  const LoginScreenForm({
    super.key,
  });

  @override
  State<LoginScreenForm> createState() => _LoginScreenFormState();
}

class _LoginScreenFormState extends State<LoginScreenForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  bool obsecured = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AppTextFormField(
            hint: "Email",
            controller: context.read<LoginCubit>().emailController,
            validator: (value) => MyValidators.emailValidator(value),
          ),
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
              child: Icon(obsecured ? Icons.visibility_off : Icons.visibility),
            ),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) =>
                MyValidators.seperatedPasswordValidator(value),
          ),
        ],
      ),
    );
  }
}
