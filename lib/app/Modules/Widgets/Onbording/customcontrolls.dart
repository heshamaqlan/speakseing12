import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Core/constants/appcolors.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_controller.dart';
import 'package:speaking_sing_start/app/Modules/data/static/static.dart';

class Customcontrolls extends StatelessWidget {
  const Customcontrolls({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          onbordinglist.length,
          (index) => AnimatedContainer(
            margin: const EdgeInsets.only(right: 5),
            duration: const Duration(milliseconds: 300),
            width: controller.currentPage.value == index ? 20 : 5,
            height: 6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: AppColors.base,
            ),
          ),
        ),
      ),
    );
  }
}
