

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  late final FlutterSecureStorage storage;

  SecureStorage() {
    storage = const FlutterSecureStorage();
  }

  writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future <String> readSecureData(String key) async {
    String value = await storage.read(key: key) ?? 'No data found!';
  // log('Data read from secure storage: $value');
    return value;
    
  }

  deleteSecureData(String key) async {
    await storage.delete(key: key);
  }
}
