import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TipsItem extends StatelessWidget {
  const TipsItem({
    super.key, required this.title, required this.image,
  });
  final String title,image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:106.w ,height: 88.h,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff858484)),
          borderRadius: BorderRadius.circular(6.r)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
           SizedBox(height: 8.h,),
          Text(title,style:  TextStyle(fontWeight: FontWeight.w400,fontSize: 10.sp),)
        ],),
    );
  }
}
