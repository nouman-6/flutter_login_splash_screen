import 'package:get/get.dart';
import 'package:maps_dummy_project/auth/login_screen.dart';
import 'package:maps_dummy_project/screens/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';
  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () =>  SplashScreen(),
    ),
    GetPage(
      name: loginScreen,
      page: () =>  LoginScreen(),
    ),
  ];
}
