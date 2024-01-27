import 'package:agriguide/Core/widgets/SearchTextField.dart';
import 'package:agriguide/Features/Home/Presentation/Widgets/Article.dart';
import 'package:agriguide/Features/Home/Presentation/Widgets/UserName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          UserName(),
          SizedBox(
            height: 15.h,
          ),
          SearchTextField(),
          SizedBox(
            height: 15.h,
          ),
          Container(
            color: Colors.amberAccent,
            width: 400.w,
            height: 180.h,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 315.h,
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Article();
              },
            ),
          )
        ],
      ),
    );
  }
}
