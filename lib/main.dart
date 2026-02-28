import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speaking_sing_start/app/Modules/Splash/splash_view.dart';
import 'package:speaking_sing_start/app/routes/app_pages.dart';
import 'package:speaking_sing_start/app/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SpeakingSing App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.routes,
      // home: SplashView(),
      // routes: routes,
    );
  }
}
