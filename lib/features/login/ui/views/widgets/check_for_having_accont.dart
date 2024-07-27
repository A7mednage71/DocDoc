import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CheckForHavingAccountWidget extends StatelessWidget {
  const CheckForHavingAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account yet?",
          style: AppStyles.font12with400wgrey,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Sign Up",
            style: AppStyles.font12with400w,
          ),
        )
      ],
    );
  }
}
