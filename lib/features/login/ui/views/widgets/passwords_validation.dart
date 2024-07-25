import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordsValidation extends StatelessWidget {
  const PasswordsValidation(
      {super.key,
      required this.haslowercase,
      required this.hasUppercase,
      required this.hasSpecialChar,
      required this.hasNumber,
      required this.hasMinlength});
  final bool haslowercase;
  final bool hasUppercase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinlength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", haslowercase),
        SizedBox(height: 6.h),
        buildValidationRow("At least 1 Uppercase letter", hasUppercase),
        SizedBox(height: 6.h),
        buildValidationRow("At least 1 special letter", hasSpecialChar),
        SizedBox(height: 6.h),
        buildValidationRow("At least 1 number", hasNumber),
        SizedBox(height: 6.h),
        buildValidationRow("At least 8 characters long", hasMinlength),
        SizedBox(height: 6.h),
      ],
    );
  }

  Widget buildValidationRow(String text, bool isActivated) {
    return Row(
      children: [
        const CircleAvatar(
          maxRadius: 4,
          backgroundColor: Colors.grey,
        ),
        SizedBox(width: 5.w),
        Text(
          text,
          style: TextStyle(
            decorationThickness: 2,
            color: isActivated ? Colors.blueGrey : Colors.grey,
            decorationColor: Colors.green,
            decoration:
                isActivated ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
      ],
    );
  }
}
