import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud2/views/const/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Padding(
        padding: EdgeInsets.all(16.h),
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Selamat Datang'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.h,
                    color: kLight
                  )
                ),
                Text(
                  'Aplikasi resmi'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30.h,
                    color: kLight
                  )
                ),
                SizedBox(height: 20.h,),
                Image.asset('assets/logo.jpg'),
                SizedBox(height: 30.h,),
                const CircularProgressIndicator(color: kLight,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
