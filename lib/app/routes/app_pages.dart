import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/About_App/about_binding.dart';
import 'package:speaking_sing_start/app/Modules/About_App/about_view.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keyboard_binding.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keyboard_view.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_binding.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_view.dart';
import 'package:speaking_sing_start/app/Modules/Splash/splash_binding.dart';
import 'package:speaking_sing_start/app/Modules/Splash/splash_view.dart';
import 'package:speaking_sing_start/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.KEYBOARD,
      page: () => Keyboard(),
      binding: KeyboardBinding(),
    ),
    GetPage(
      name: AppRoutes.ABOUTAPP,
      page: () => AboutView(),
      binding: AbpoutViewBinding(),
    ),
  ];
}
