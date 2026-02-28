import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Splash/splash_controoler.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashController>(SplashController());
  }
}
