import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uud2/controllers/home_controller.dart';
import 'package:uud2/routes/app_pages.dart';
import 'package:uud2/views/const/color.dart';
import 'package:uud2/views/home/components/card_menu.dart';
import 'package:uud2/views/home/components/card_uud.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.h),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height
            ),
            child: Obx(() {
              if(homeController.isLoading.value){
                  return _loadShimmer();
              } else {
                return _loadContent();
              }
            }),
          ),
        )
      ),
    );
  }

  Widget _loadShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                stops: [0, 0.81],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [kSecond, kPrimary],
              ),
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang!",
                  style: TextStyle(
                    fontSize: 16.h,
                    color: kLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 6,
                      child: Text(
                        "Mulai perjalanan hukum Anda dengan kepercayaan diri. Dapatkan bantuan hukum mudah dan cepat langsung dari smartphone Anda",
                        style: TextStyle(
                          color: kLight,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 100.w,
                        height: 100.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo_nobg.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          "Materi",
          style: TextStyle(
            fontSize: 16.h,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardUud(
                  title: 'UU RI No. 16 Tahun 2011',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/uu16.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PP Nomor 42 Tahun 2013',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/pp42.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PERMENKUMHAM No. 63 Tahun 2016',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/permenkumham10.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PERMENKUMHAM No. 10 Tahun 2015',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/permenkumham63.pdf');
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          "Menu",
          style: TextStyle(
            fontSize: 16.h,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Column(
            children: [
              CardMenu(
                title: "Konsultasi",
                bgPath: 'assets/konsultasi.jpg',
                onTap: () { Get.toNamed(Routes.KONSULTASI); },
              ),
              CardMenu(title: "Data Tim", bgPath: 'assets/tim.jpg', onTap: () {  },),
              CardMenu(title: "Panduan", bgPath: 'assets/panduan.jpg', onTap: () {  },),
              CardMenu(title: "Mitra", bgPath: 'assets/mitra.jpg', onTap: () {  },),
            ],
          ),
        ),
      ],
    );
  }

    Widget _loadContent() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                stops: [0, 0.81],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [kSecond, kPrimary],
              ),
              borderRadius: BorderRadius.circular(20.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang!",
                  style: TextStyle(
                    fontSize: 16.h,
                    color: kLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      flex: 6,
                      child: Text(
                        "Mulai perjalanan hukum Anda dengan kepercayaan diri. Dapatkan bantuan hukum mudah dan cepat langsung dari smartphone Anda",
                        style: TextStyle(
                          color: kLight,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 100.w,
                        height: 100.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logo_nobg.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Materi",
            style: TextStyle(
              fontSize: 16.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardUud(
                  title: 'UU RI No. 16 Tahun 2011',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/uu16.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PP Nomor 42 Tahun 2013',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/pp42.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PERMENKUMHAM No. 63 Tahun 2016',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/permenkumham10.pdf');
                  },
                ),
                SizedBox(width: 5.w),
                CardUud(
                  title: 'PERMENKUMHAM No. 10 Tahun 2015',
                  onTap: () {
                    Get.toNamed(Routes.DETAIL, arguments: 'assets/materi/permenkumham63.pdf');
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Menu",
            style: TextStyle(
              fontSize: 16.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Column(
            children: [
              CardMenu(
                title: "Konsultasi",
                bgPath: 'assets/konsultasi.jpg',
                onTap: () { Get.toNamed(Routes.KONSULTASI); },
              ),
              CardMenu(
                title: "Data Tim",
                bgPath: 'assets/tim.jpg',
                onTap: () { Get.toNamed(Routes.DATA); },),
              CardMenu(title: "Panduan", bgPath: 'assets/panduan.jpg', onTap: () {  },),
              CardMenu(title: "Mitra", bgPath: 'assets/mitra.jpg', onTap: () {  },),
            ],
          ),
        ],
      );
    }
}
