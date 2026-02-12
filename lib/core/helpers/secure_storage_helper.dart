import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  static setSecuredData(String key, value) async {
    debugPrint('FlutterSecureStorage : setSecuredData with key : $key');
    const storage = FlutterSecureStorage();
    await storage.write(key: key, value: value);
  }

  static getSecuredData(String key) async {
    debugPrint('FlutterSecureStorage : getSecuredData with key : $key');
    const storage = FlutterSecureStorage();
    return await storage.read(key: key) ?? "";
  }

  static removeSecuredData(String key) async {
    debugPrint('FlutterSecureStorage : removeSecuredData with key : $key');
    const storage = FlutterSecureStorage();
    await storage.delete(key: key);
  }

  static clearAllData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
  }
}
