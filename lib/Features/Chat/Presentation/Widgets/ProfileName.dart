import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        trailing: CircleAvatar(
          radius: 15,
          backgroundColor: AppColor.Kprimarycolor,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              size: 20,
              Icons.close,
              color: Colors.white,
            ),
          ),
        ),
        title: Text(
          'Nora Mohamed',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.sp,fontFamily: "Inter"),
        ),
        subtitle: Text(
          'Last seen 4:15 pm',
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500,fontFamily: "Inter"),
        ),
        leading: CircleAvatar(
          radius: 50,
          child: Image.asset(logo),
        ));
  }
}
