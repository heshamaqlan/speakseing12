import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_controller.dart';

class OnboardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OnboardingController>(OnboardingController());
  }
}
