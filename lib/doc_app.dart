import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/routing/app_route.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        theme: ThemeData(
            primaryColor: AppColors.mainColor,
            scaffoldBackgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: isRegistered ? Routes.homeView : Routes.loginView,
        onGenerateRoute: appRouter.getroute,
      ),
    );
  }
}
