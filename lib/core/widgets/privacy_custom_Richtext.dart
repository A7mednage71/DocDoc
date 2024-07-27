import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyCutomRichText extends StatelessWidget {
  const PrivacyPolicyCutomRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging,you agree to our ",
            style: AppStyles.font12with400wgrey,
          ),
          TextSpan(
            text: "Terms & Conditions",
            style: AppStyles.font12with400wgrey.copyWith(
                fontWeight: FontWeight.bold, color: const Color(0xff242424)),
          ),
          TextSpan(
            text: " and ",
            style: AppStyles.font12with400wgrey,
          ),
          TextSpan(
            text: " PrivacyPolicy.",
            style: AppStyles.font12with400wgrey.copyWith(
              fontWeight: FontWeight.bold,
              color: const Color(0xff242424),
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
