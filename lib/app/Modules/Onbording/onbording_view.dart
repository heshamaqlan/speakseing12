import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Widgets/Onbording/custombutton.dart';
import 'package:speaking_sing_start/app/Modules/Widgets/Onbording/customcontrolls.dart';
import 'package:speaking_sing_start/app/Modules/Widgets/Onbording/customslider.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingState();
}

class _OnboardingState extends State<OnboardingView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 70),

            Expanded(
              flex: 2,
              child: Customslider(pageController: _pageController),
            ),

            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Customcontrolls(),
                  const SizedBox(height: 80),
                  Custombutton(pageController: _pageController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
