import 'package:doc/core/helpers/my_validators.dart';
import 'package:doc/core/widgets/app_text_form_field.dart';
import 'package:doc/core/widgets/passwords_validation.dart';
import 'package:doc/features/sign_up/ui/manager/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreenForm extends StatefulWidget {
  const SignUpScreenForm({super.key});

  @override
  State<SignUpScreenForm> createState() => _SignUpScreenFormState();
}

class _SignUpScreenFormState extends State<SignUpScreenForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  late TextEditingController passwordController;
  bool obsecured = true;

  bool haslowercase = false;
  bool hasUppercase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinlength = false;

  @override
  void initState() {
    passwordController = context.read<SignUpCubit>().passwordController;
    super.initState();
    passwordListener();
  }

  void passwordListener() {
    passwordController.addListener(
      () {
        setState(() {
          haslowercase = AppRegex.hasLowerCase(passwordController.text);
          hasUppercase = AppRegex.hasUpperCase(passwordController.text);
          hasSpecialChar =
              AppRegex.hasSpecialCharacter(passwordController.text);
          hasNumber = AppRegex.hasNumber(passwordController.text);
          hasMinlength = AppRegex.hasMinLength(passwordController.text);
        });
      },
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().key,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          AppTextFormField(
            hint: "Name",
            controller: context.read<SignUpCubit>().nameController,
            validator: (value) => MyValidators.displayNamevalidator(value),
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hint: "Phone Number",
            controller: context.read<SignUpCubit>().phoneController,
            validator: (value) => MyValidators.phoneNumberValidator(value),
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hint: "Email",
            controller: context.read<SignUpCubit>().emailController,
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
            controller: context.read<SignUpCubit>().passwordController,
            validator: (value) => MyValidators.passwordValidator(value),
          ),
          SizedBox(height: 16.h),
          AppTextFormField(
            hint: "Password Confirmation",
            suffix: GestureDetector(
              onTap: () {
                setState(() {
                  obsecured = !obsecured;
                });
              },
              child: Icon(obsecured ? Icons.visibility_off : Icons.visibility),
            ),
            controller:
                context.read<SignUpCubit>().passwordConfirmationController,
            validator: (value) => MyValidators.repeatPasswordValidator(
              value: value,
              password:
                  context.read<SignUpCubit>().passwordController.text.trim(),
            ),
          ),
          SizedBox(height: 16.h),
          PasswordsValidation(
            haslowercase: haslowercase,
            hasUppercase: hasUppercase,
            hasSpecialChar: hasSpecialChar,
            hasNumber: hasNumber,
            hasMinlength: hasMinlength,
          )
        ],
      ),
    );
  }
}
