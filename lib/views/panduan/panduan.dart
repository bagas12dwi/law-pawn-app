import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud2/controllers/panduan_controller.dart';
import 'package:uud2/views/const/color.dart';

class PanduanScreen extends StatelessWidget {
  PanduanScreen({super.key});
  final PanduanController panduanController = Get.put(PanduanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panduan Penggunaan Aplikasi'),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: panduanController.pageController.value,
              children: [
                buildPage(
                  context,
                  'Tentang Aplikasi',
                  'Law Pawn adalah aplikasi bantuan hukum yang memudahkan akses ke layanan hukum, seperti konsultasi online dan panduan hukum. Aplikasi ini membantu pengguna mendapatkan nasihat dan solusi hukum secara praktis dan cepat.',
                  'logo.jpg',
                  true,
                ),
                buildPage(
                  context,
                  'Step 1',
                  'Berikut merupakan tampilan menu utama dari aplikasi, tersedia menu materi, konsultasi, data tim, panduan dan mitra ',
                  '1.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 2',
                  'Setelah memilih materi undang - undang maka akan terdapat tampilan seperti ini. Disini anda bisa mencari kata - kata sesuai dengan gambar petunjuk',
                  '2.png',
                  false,
                ),
                buildPage(
                  context,
                  'Step 3',
                  'Berikut merupakan tampilan menu konsultasi. Dihalaman ini anda bisa mengirimkan email untuk konsultasi dengan tim',
                  '3.png',
                  false,
                ),
                buildLastPage(
                  context,
                  'Step 4',
                  'Ini merupakan tampilan menu data tim. berikut merupakan data tim Law Pawn',
                  '4.png',
                ),
              ],
            ),
          ),
          Obx(() => buildIndicator(panduanController.currentPage.value)),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget buildLastPage(BuildContext context, String title, String description, String imgPath) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/$imgPath'))
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.h,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // Action when the button is pressed, e.g., navigate to another page
              Get.back(); // Example: Navigate back to the previous screen
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }

  Widget buildPage(BuildContext context, String title, String description, String imgPath, bool isFirstPage) {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: isFirstPage ? MediaQuery.of(context).size.height * .3 : MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/$imgPath'))
            ),
          ),
          // Image.asset('assets/panduan/$imgPath'),
          SizedBox(height: 30.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 24.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(int currentIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 4.h),
          width: currentIndex == index ? 12.0 : 8.0,
          height: currentIndex == index ? 12.0 : 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == index ? kPrimary : kThird,
          ),
        );
      }),
    );
  }
}