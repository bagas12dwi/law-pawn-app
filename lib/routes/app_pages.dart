import 'package:get/get.dart';
import 'package:uud2/views/data_tim/cv_screen.dart';
import 'package:uud2/views/data_tim/data_tim_screen.dart';
import 'package:uud2/views/home/home_screen.dart';
import 'package:uud2/views/konsultasi/konsultasi_screen.dart';
import 'package:uud2/views/materi/detail_screen.dart';
import 'package:uud2/views/materi/materi_screen.dart';
import 'package:uud2/views/wrapper.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => Wrapper(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.MATERI,
      page: () => MateriScreen(),
    ),
    GetPage(name: Routes.KONSULTASI, page: () => KonsultasiScreen()),
    GetPage(name: Routes.DATA, page: () => DataTimScreen()),
    GetPage(name: Routes.PANDUAN, page: () => MateriScreen()),
    GetPage(name: Routes.MITRA, page: () => MateriScreen()),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
    ),
    GetPage(
      name: Routes.CV,
      page: () => CvScreen(),
    ),
  ];
}