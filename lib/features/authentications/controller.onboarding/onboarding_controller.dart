
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutterecommerce/features/authentications/screens/login/Login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController=PageController();
  Rx<int> currentPage=0.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    startAutoScroll();
  }

  @override
  void onClose() {

    super.onClose();
    _timer?.cancel();
    pageController.dispose();
  }



  /// Update current index
  void updatePageIndicator(index) =>currentPage.value=index;

  /// Jump to the specific dot selected page
   void dotNavigationClick(index){
     currentPage.value=index;
     pageController.jumpToPage(index);
   }

   /// update current index & jump to the next page
   void nextPage(){
     if(currentPage.value==2){
       pageController.jumpToPage(0);
     }
     else{
       int page=currentPage.value+1;
       pageController.jumpToPage(page);
     }
   }

   /// update current index
   void skipPage(){
     currentPage.value=2;
     pageController.jumpToPage(2);
     Get.offAll(LoginScreen());
     _timer?.cancel();
   }

  /// Auto scroll onboarding pages every 3 seconds
  void startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      nextPage();
    });
  }

}
