import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Utils/Constants.dart';

class SuitablePlantsListViewItem extends StatelessWidget {
  const SuitablePlantsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 113.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xffF5F5F5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/plants.png'),
          SizedBox(
            width: 8.h,
          ),
          SizedBox(
            width: 170.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Zucchini', style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 20.sp,),),
                // Text('Sunken brown to red oval spots appear on the lower embryonic ', style: TextStyle(
                //   fontWeight: FontWeight.w400, fontSize: 13.sp,),),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Sunken brown to red oval spots appear on the lower embryonic ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400, fontSize: 13.sp,),),
                    TextSpan(
                        text: '   Read more',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp,
                            color: AppColor.Kprimarycolor)),
                  ]),)
              ],
            ),
          ),

        ],),
    );
  }
}
