import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keboard_model.dart';
import 'package:speaking_sing_start/app/routes/app_routes.dart';

class AboutController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateTokeborad();
  }

  void navigateTokeborad() {
    Get.back();
  }
}
