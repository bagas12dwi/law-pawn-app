import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PanduanController extends GetxController {
  var pageController = PageController().obs;
  var currentPage = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController.value.addListener(() {
      currentPage.value = pageController.value.page!.round();
    });
  }
}