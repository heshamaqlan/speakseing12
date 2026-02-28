import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Keyboard/keboard_model.dart';
import 'package:speaking_sing_start/app/routes/app_routes.dart';

class KeyboardController extends GetxController {
  final RxList<KeyboardModel> inputSigns = <KeyboardModel>[].obs;

  final RxString displayText = " ".obs;

  void addSign(KeyboardModel sign) {
    inputSigns.add(sign);
  }

  void addSpace() {
    inputSigns.add(KeyboardModel(char: " ", assetpath: ""));
  }

  void deleteLast() {
    if (inputSigns.isNotEmpty) {
      inputSigns.removeLast();
    }
  }

  void clearInput() {
    inputSigns.clear();
  }

  void submitText() {
    String result = inputSigns.map((e) => e.char).join();
    displayText.value = result.isEmpty ? " " : result;
    // inputSigns.clear();
  }

  void navigateToAboutView() {
    Get.toNamed(AppRoutes.ABOUTAPP);
  }
}
