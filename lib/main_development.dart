import 'dart:developer';

import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/helpers/notifications/firebase_messaging.dart';
import 'package:doc/core/helpers/secure_storage_helper.dart';
import 'package:doc/core/routing/app_route.dart';
import 'package:doc/doc_app.dart';
import 'package:doc/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> handleBackGroundMessage(RemoteMessage? message) async {
  if (message == null) return;
  if (message.notification != null) {
    log("Message Title : ${message.notification?.title}");
    log("Message body : ${message.notification?.body}");
  }
  log("background message: $message");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkForRegister();
  await setGetIt();
  await ScreenUtil.ensureScreenSize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessagingHelper().initNotifications();
  FirebaseMessaging.onBackgroundMessage(handleBackGroundMessage);
  runApp(DocApp(appRouter: AppRouter()));
}

Future<void> checkForRegister() async {
  String? userToken =
      await SecureStorageHelper.getSecuredData(SharedPrefKeys.userToken);

  debugPrint('userToken : $userToken');
  if (userToken != "" && userToken != null && userToken.isNotEmpty) {
    isRegistered = true;
  } else {
    isRegistered = false;
  }
}
