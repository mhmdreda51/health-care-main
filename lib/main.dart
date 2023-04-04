import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care/view/home/view/home_screen.dart';
import 'package:health_care/view/login/view/login_screen.dart';
import 'core/bloc_observer.dart';
import 'core/cacheHelper/cache_helper.dart';
import 'core/dioHelper/dio_helper.dart';
import 'core/dio_manager.dart';
import 'core/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();

  await DioManager.initDioOptions();
  //========================================
  //========================================
  //========================================
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();

    return MaterialApp(
      title: 'Health Care',
      locale: const Locale('ar', 'EG'),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      builder: (context, child) => botToastBuilder(context, child),
      home: CacheHelper.getUserToken == null
          ? const LoginScreen()
          : const HomeScreen(),
    );
  }
}
