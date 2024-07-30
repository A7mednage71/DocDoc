import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routing/app_route.dart';
import 'package:doc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await setGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
