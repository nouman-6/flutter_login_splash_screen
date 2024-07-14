

import 'dart:async';

import 'package:get/get.dart';
import 'package:maps_dummy_project/app_routes/app_routes.dart';

class SplashController extends GetxController{
  //double
  var progress = 0.0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startProgress();
  }

  // progress function
  void startProgress(){
    Timer.periodic( const Duration(milliseconds: 100),
     (timer) { 
      progress.value += 0.01;
      if(progress >= 1.0){
        timer.cancel();
        Get.offAllNamed(AppRoutes.loginScreen);
      }
     });
  }
}