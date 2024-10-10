import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/sign_up/signup.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();
  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///update current index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);

  }
///update current index and jump to the next page
  void nextPage() {
    if(currentPageIndex.value == 1){
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Get.offAll(const SignUpScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

///update current index and jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);

  }
}