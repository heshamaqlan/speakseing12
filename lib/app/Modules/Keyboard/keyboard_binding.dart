import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keboardcontroller.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_controller.dart';

class KeyboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<KeyboardController>(KeyboardController());
  }
}
