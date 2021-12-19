import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();
  var currentIndex = 0.obs;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
