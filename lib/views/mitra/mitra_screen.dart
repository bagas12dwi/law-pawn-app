import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MitraScreen extends StatelessWidget {
  const MitraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mitra"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100.h,
              child: Image.asset('assets/mitra.png'),
            ),
            Text(
              'Masa Depan Hukum',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
