import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap:onTap,
            child: const Icon(Icons.arrow_back_rounded)),
         SizedBox(
          width: 72.w,
        ),
        Text(
          title
          ,
          style:  TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
