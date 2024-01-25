import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(logo),
      trailing: Icon(
        size: 30,
        Icons.notification_add_rounded,
        color: Kprimarycolor,
      ),
      title: Text(
        'Nora Mohamed',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      ),
      subtitle: Text(
        'Enjoy Our services !',
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xffB7B7B7)),
      ),
    );
  }
}
