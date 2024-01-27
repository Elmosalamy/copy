import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(logo),
      trailing: Icon(
        size: 30,
        Icons.notification_add_rounded,
        color: AppColor.Kprimarycolor,
      ),
      title: Text(
        'Hi Catherinel',
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
