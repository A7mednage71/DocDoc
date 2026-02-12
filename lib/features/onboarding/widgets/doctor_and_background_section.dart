import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndBackgoundSection extends StatelessWidget {
  const DoctorImageAndBackgoundSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SvgPicture.asset(
          Assets.assetsSvgsDoctorBackground,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: AlignmentDirectional.bottomCenter,
              end: AlignmentDirectional.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(Assets.assetsPngDoctorImage),
        ),
        Positioned(
          bottom: 0,
          left: 60,
          child: Text(
            "Best Doctor\n Appointment App",
            style: AppStyles.font32Black700weight
                .copyWith(color: const Color(0xff247CFF)),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
