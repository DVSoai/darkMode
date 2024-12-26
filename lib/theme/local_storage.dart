
import 'package:get_storage/get_storage.dart';

class LocalStorageKey {
  const LocalStorageKey._();

  static const isDarkMode = 'isDarkMode';
}

abstract class LocalStorage {
  Future<void> init();

  bool get darkMode;

  set darkMode(bool isDarkMode);

}

class LocalStorageImpl implements LocalStorage {
  late GetStorage _storage;

  LocalStorageImpl() {
    _storage = GetStorage('SuperApp');
  }

  @override
  init() async {
    await _storage.initStorage;
  }

  @override
  bool get darkMode {
    return _storage.read(LocalStorageKey.isDarkMode) ?? false;
  }

  @override
  set darkMode(bool isDarkMode) {
    _storage.write(LocalStorageKey.isDarkMode, isDarkMode);
  }

}
