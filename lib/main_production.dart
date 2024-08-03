import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/routing/app_route.dart';
import 'package:doc/doc_app.dart';
import 'package:doc/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await setGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(DocApp(appRouter: AppRouter()));
}

// Running :
// flutter run --flavor production -t lib/main_production.dart
// flutter run --flavor development -t lib/main_development.dart

// Release :

// flutter build apk --flavor production -t lib/main_production.dart --release
// flutter build apk --flavor development -t lib/main_development.dart --release

// flutter build apk --flavor production -t lib/main_production.dart --debug
// flutter build apk --flavor development -t lib/main_development.dart --debug