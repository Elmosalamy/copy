import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Utils/Constants.dart';

class SoilTypeItemListView extends StatelessWidget {
  const SoilTypeItemListView({
    super.key, required this.title, this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 88.w,
        height: 31.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.Kprimarycolor,
            borderRadius: BorderRadius.circular(5.r)
        ),
        child: Text(title, style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.white),),
      ),
    );
  }
}
