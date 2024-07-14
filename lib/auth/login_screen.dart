import 'package:custom_clippers/Clippers/sin_cosine_wave_clipper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_dummy_project/app_const/app_const.dart';
import 'package:maps_dummy_project/auth/login_controller.dart';
import 'package:maps_dummy_project/utils/custom_card.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.pColor,
        body: Stack(
          children: [
            ClipPath(
              clipper: SinCosineWaveClipper(),
              child: Container(
                height: 160,
                padding: const EdgeInsets.all(20),
                color: AppColors.sColor,
                alignment: Alignment.center,
                child: const Text(
                  'Login / Signup',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.pColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // const Spacer(),
                      LoginCard(
                        title: 'Login',
                        isExpanded: controller.isLoginExpanded,
                        onPressed: controller.toggleLogin,
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                              obscureText: true,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Login'),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      LoginCard(
                        title: 'Sign Up',
                        isExpanded: controller.isSignUpExpanded,
                        onPressed: controller.toggleSignUp,
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                              obscureText: true,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Confirm Password',
                              ),
                              obscureText: true,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Sign Up'),
                            ),
                          ],
                        ),
                      ),
                      // const Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
