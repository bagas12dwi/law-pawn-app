import 'package:get/get.dart';
import 'package:uud2/routes/app_pages.dart';

class SplashController extends GetxController {
  void _navigateToHome()async {
    await Future.delayed(const Duration(seconds: 10));
    Get.offNamed(Routes.HOME);
  }

  @override
  void onInit() {
    super.onInit();
    _navigateToHome();
  }
}