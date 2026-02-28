import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/About_App/about_controller.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keboardcontroller.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_controller.dart';

class AbpoutViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AboutController>(AboutController());
  }
}
