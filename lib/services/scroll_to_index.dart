import 'package:flutter/cupertino.dart';

class ScrollHelper {
  static void scrollHelper(
      int index, ScrollController controller, double height) {
    if (index == 0) {
      controller.animateTo(height * 0.38,
          duration: const Duration(
            milliseconds: 200,
          ),
          curve: Curves.linear);
    } else if (index == 1) {
      controller.animateTo(height * 1.25,
          duration: const Duration(
            milliseconds: 200,
          ),
          curve: Curves.linear);
    } else {
      controller.animateTo(height * 2.8,
          duration: const Duration(
            milliseconds: 200,
          ),
          curve: Curves.linear);
    }
  }
}
