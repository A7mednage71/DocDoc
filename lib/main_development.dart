import 'package:doc/core/di/dependency_injection.dart';
import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/helpers/secure_storage_helper.dart';
import 'package:doc/core/routing/app_route.dart';
import 'package:doc/doc_app.dart';
import 'package:doc/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkForRegister();
  await setGetIt();
  await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
