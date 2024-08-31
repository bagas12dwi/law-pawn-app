import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:uud2/routes/app_pages.dart';
import 'package:uud2/views/const/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Flutter Demo',
            initialRoute: Routes.SPLASH,
            getPages: AppPages.pages,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scaffoldBackgroundColor: kLight,
                appBarTheme: const AppBarTheme(
                    backgroundColor: kLight
                )
            ),
          );
        }
    );
  }
}
