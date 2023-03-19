import 'package:get_storage/get_storage.dart';

class CacheHelper {
  static final GetStorage _appBox = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    required String token,
  }) async {
    await _cacheUserToken(token);
  }

  static Future<void> _cacheUserToken(String token) async =>
      await _appBox.write('token', token);

  static String? get getUserToken => _appBox.read('token') ?? "8167f4decf2c90170bf0749c0daa834e315b2c8299a6430249b18d896d53b20e";

  static Future<void> signOut() async => await _appBox.erase();

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================

//===============================================================
}
