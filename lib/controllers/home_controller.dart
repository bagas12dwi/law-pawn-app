import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), (){
      isLoading.value = false;
    });
  }
}