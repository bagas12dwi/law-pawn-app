import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud2/views/const/color.dart';

class CardDataTim extends StatelessWidget {
  const CardDataTim({super.key, required this.nama, required this.tanggal, required this.email, required this.profilPath});
  final String nama;
  final String tanggal;
  final String email;
  final String profilPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      margin: EdgeInsets.only(bottom: 15.h),
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        color: kSecond,
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: const Color(0x000000).withOpacity(1),
            offset: const Offset(3, 5),
            blurRadius: 10,
            spreadRadius: -3,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 70.h,
              width: 70.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.h),
                  image: DecorationImage(
                      image: AssetImage(
                        profilPath,
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.all(5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                        fontSize: 18.h,
                        color: kLight,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(flex:1, child: Icon(Icons.calendar_month, color: kLight,)),
                      SizedBox(width: 10.h,),
                      Expanded(
                        flex: 9,
                        child: Text(
                          tanggal,
                          style: TextStyle(
                            fontSize: 16.h,
                            color: kLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(flex:1, child: const Icon(Icons.email_outlined, color: kLight,)),
                      SizedBox(width: 10.h,),
                      Expanded(
                        flex: 9,
                        child: Text(
                          email,
                          style: TextStyle(
                            fontSize: 16.h,
                            color: kLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
