import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        ListTile(
          leading: Icon(
            size: 15,
            Icons.waving_hand,
            color: Kprimarycolor,
          ),
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
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 350,
          child: TextField(
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Kprimarycolor)),
                hintText: 'Search Here',
                hintStyle: TextStyle(
                    color: Color(0xff858484), fontWeight: FontWeight.w400),
                prefixIcon: Icon(
                  Icons.search,
                  size: 33,
                  color: Color(0xff858484),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: BorderSide(color: Color(0xff858484)))),
          ),
        )
      ],
    ));
  }
}
