import 'package:get_storage/get_storage.dart';

class CacheHelper {
  static final GetStorage _appBox = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    required String token,
    required int id,
  }) async {
    await _cacheUserToken(token);
    await _cacheUserId(id);
  }

  static Future<void> _cacheUserToken(String token) async =>
      await _appBox.write('token', token);
  static Future<void> _cacheUserId(int id) async =>
      await _appBox.write('id', id);
  static String? get getUserToken => _appBox.read('token');
  static int? get getUserId => _appBox.read('id');

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
