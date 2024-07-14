import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_dummy_project/app_const/app_const.dart';
import 'package:maps_dummy_project/screens/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.appIcon,
                height: 200.0,
                width: 200.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Obx(() {
                return LinearProgressIndicator(
                  value: controller.progress.value,
                  color: AppColors.pColor,
                  minHeight: 15.0,
                  
                );
              }),
              SizedBox(
                height: 20.0,
              ),
              Obx(() {
                return Text(
                    "${(controller.progress.value * 100).toStringAsFixed(0)}%");
              })
            ],
          ),
        ),
      ),
    );
  }
}
