import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// --Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// --Update current index while page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// --Jump to the specifies dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  ///-- Update curent index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.put(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// --Update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
