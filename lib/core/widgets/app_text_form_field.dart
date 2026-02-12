import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hint,
    required this.controller,
    this.validator,
    this.obsecure = false,
    this.suffix,
  });

  final String hint;
  final bool obsecure;
  final Widget? suffix;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 17.h, horizontal: 20.w),
        filled: true,
        fillColor: const Color(0xffFDFDFF),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Color(0xffEDEDED), width: 1.5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: Color(0xff247CFF), width: 1.5),
        ),
        hintText: hint,
        hintStyle: AppStyles.fontweight500grey,
        suffixIcon: suffix,
      ),
      validator: validator,
    );
  }
}
