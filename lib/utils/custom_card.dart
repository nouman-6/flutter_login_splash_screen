import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_dummy_project/app_const/app_const.dart';

class LoginCard extends StatelessWidget {
   LoginCard({
    super.key,
    required this.title,
    required this.isExpanded,
    required this.onPressed,
    required this.child,
  });
  String title;
  RxBool isExpanded;
  VoidCallback onPressed;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 8.0),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      isExpanded.value
                          ? AppImages.minusIcon
                          : AppImages.plusIcon,
                      height: 20.0,
                      width: 20.0,
                    )
                  ],
                ),
                if (isExpanded.value) ...[
                  const SizedBox(height: 16.0),
                  child,
                ],
              ],
            ),
          )),
    );
  }
}
