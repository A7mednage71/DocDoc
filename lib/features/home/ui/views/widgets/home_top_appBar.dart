import 'package:doc/core/helpers/app_assets.dart';
import 'package:doc/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class HomeTopAppBar extends StatelessWidget {
  const HomeTopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        "Hi, Abo Nageh!",
        style: AppStyles.interBold18,
      ),
      subtitle: Text("How Are you Today?", style: AppStyles.interRegular11),
      trailing: Image.asset(Assets.assetsPngNotification),
    );
  }
}
