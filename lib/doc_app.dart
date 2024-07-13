import 'package:doc/core/routing/app_route.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingView,
        onGenerateRoute: appRouter.getroute,
      ),
    );
  }
}
