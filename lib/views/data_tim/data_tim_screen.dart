import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud2/routes/app_pages.dart';
import 'package:uud2/views/data_tim/components/card_data_tim.dart';

class DataTimScreen extends StatelessWidget {
  const DataTimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Tim'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_shinfani.pdf', 'nama': 'Shinfani Kartika Wardhani, S.H.'}),
                  child: const CardDataTim(
                    nama: 'Azizah Kaltsum Mabrukah',
                    tanggal: 'Bekasi, 23 September 2003',
                    email: '21071010033@student.upnjatim.ac.id',
                    profilPath: 'assets/profil.jpg',
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_yana.pdf', 'nama': 'Yana Indawati, SH.,M.Kn'}),
                  child: const CardDataTim(
                    nama: 'Uzlifatus Dea Arianty',
                    tanggal: 'Sidoarjo, 13 Juli 2003',
                    email: '21071010033@student.upnjatim.ac.id',
                    profilPath: 'assets/profil.jpg',
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.CV, arguments: {'cvPath': 'assets/CV_sascha.pdf', 'nama': 'Sascha Zahra Vernanda'}),
                  child: const CardDataTim(
                    nama: 'Farizza Taralita Arrachma Fachrezzi',
                    tanggal: 'Kediri, 27 Juni 2002',
                    email: '21071010033@student.upnjatim.ac.id',
                    profilPath: 'assets/profil.jpg',
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
