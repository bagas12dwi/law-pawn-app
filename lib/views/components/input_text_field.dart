import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uud2/views/const/color.dart';

class InputTextFormField extends StatelessWidget {
  const InputTextFormField({super.key, required this.onChanged, required this.title, required this.keyboardType, this.minLines = 3, this.maxLines});
  final void Function(String) onChanged;
  final String title;
  final TextInputType keyboardType;
  final int? minLines;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 5.h,),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.h),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.h),
                borderSide: const BorderSide(color: kPrimary)
              )
            ),
            onChanged: onChanged,
            minLines: minLines,
            maxLines: maxLines,
            keyboardType: TextInputType.multiline,
          ),
        ],
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  const InputTextField({super.key, required this.title, required this.onChanged, required this.keyboardType});
  final String title;
  final void Function(String) onChanged;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400
            ),
          ),
          SizedBox(height: 5.h,),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.h)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.h),
                borderSide: BorderSide(color: kPrimary)
              )
            ),
            keyboardType: keyboardType,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

