import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          "Forgot Password?",
          style: AppStyles.font12with400w,
        ),
      ),
    );
  }
}
