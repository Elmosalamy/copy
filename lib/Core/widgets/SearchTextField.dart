import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key,  this.width=280,  this.height=45});

   final double width,height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width.w,
        height: height.h,
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: AppColor.Kprimarycolor)),
              hintText: 'Search Here',
              hintStyle: TextStyle(
                  color: AppColor.Lightgray, fontWeight: FontWeight.w400),
              prefixIcon: Icon(
                Icons.search,
                size: 33,
                color: AppColor.Darkgray,
              ),
              fillColor: AppColor.Gray,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: AppColor.Darkgray)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: AppColor.Darkgray))),
        ),
      ),
    );
  }
}
