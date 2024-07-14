import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoginExpanded = false.obs;
  var isSignUpExpanded = false.obs;

  void toggleLogin() {
    isLoginExpanded.value = !isLoginExpanded.value;
    if (isLoginExpanded.value) {
      isSignUpExpanded.value = false;
    }
  }

  void toggleSignUp() {
    isSignUpExpanded.value = !isSignUpExpanded.value;
    if (isSignUpExpanded.value) {
      isLoginExpanded.value = false;
    }
  }
}
