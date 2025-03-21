import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunction {

  static Color? getColor(String value) {
    if(value == 'Green')
      {
        return Colors.green;
      }
    return null;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }
}