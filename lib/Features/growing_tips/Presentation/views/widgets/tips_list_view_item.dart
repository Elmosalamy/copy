import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Core/Utils/Constants.dart';

class TipsListViewItem extends StatelessWidget {
  const TipsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/tips-image.png'),
         SizedBox(width: 8.w,),
        SizedBox(
          width: 236.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Choose the right soil',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),),
               SizedBox(height: 8.h,),
              Row(children: [
                Image.asset('assets/images/person-image.png'),
                 SizedBox(width: 12.w,),
                 Text('John Doe',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),),
                const Spacer(),
                Text('Basic Tips',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: AppColor.Kprimarycolor),),


              ],)
            ],),
        )
      ],);
  }
}
