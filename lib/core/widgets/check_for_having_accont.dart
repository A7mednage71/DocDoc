import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CheckForHavingAccountWidget extends StatelessWidget {
  const CheckForHavingAccountWidget({
    super.key,
    required this.onPressed,
    required this.checkText,
    required this.buttonName,
  });

  final String checkText;
  final String buttonName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          checkText,
          style: AppStyles.font12with400wgrey,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: AppStyles.font12with400w,
          ),
        )
      ],
    );
  }
}
