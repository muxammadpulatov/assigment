import 'package:flutter/widgets.dart';

class AppResponsive {
  static late double screenHeight;
  static late double screenWidth;

  // Method to initialize screen dimensions
  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
  }

  // Helper methods
  static double height(double ratio) => screenHeight * ratio;
  static double width(double ratio) => screenWidth * ratio;
}
