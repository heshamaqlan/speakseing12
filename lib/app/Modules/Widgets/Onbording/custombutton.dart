import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Core/constants/appcolors.dart';
import 'package:speaking_sing_start/app/Modules/Onbording/onbording_controller.dart';
import 'package:speaking_sing_start/app/Modules/data/static/static.dart';
import 'package:speaking_sing_start/app/routes/app_routes.dart';

class Custombutton extends StatelessWidget {
  final PageController? pageController;

  const Custombutton({super.key, this.pageController});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OnboardingController>();

    return MaterialButton(
      textColor: Colors.white,
      onPressed: () {
        final isFinished = controller.next(onbordinglist.length);

        if (isFinished) {
          Get.offAllNamed(AppRoutes.KEYBOARD);
        } else {
          final nextIndex = controller.currentPage.value;

          pageController?.animateToPage(
            nextIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      color: AppColors.base,
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 15),
      child: const Text(
        "استمـــرار",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "Cairo",
        ),
      ),
    );
  }
}
