import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud2/routes/app_pages.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({super.key, required this.title, required this.bgPath, required this.onTap});
  final String title;
  final String bgPath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        height: 100.h, // Ubah sesuai dengan kebutuhan Anda
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.h)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.h),
          child: Stack(
            children: [
              // Background Image
              Positioned.fill(
                child: Image.asset(
                  bgPath, // Ganti dengan path gambar Anda
                  fit: BoxFit.cover,
                ),
              ),
              // Overlay Gradient with Opacity
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black, // Warna hitam dengan opacity
                      ],
                    ),
                  ),
                ),
              ),
              // Content on top of the gradient
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
