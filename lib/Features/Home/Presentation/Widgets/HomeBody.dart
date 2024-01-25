import 'package:agriguide/Core/Constants.dart';
import 'package:agriguide/Core/widgets/SearchTextField.dart';
import 'package:agriguide/Features/Home/Presentation/Widgets/Article.dart';
import 'package:agriguide/Features/Home/Presentation/Widgets/UserName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewbody extends StatelessWidget {
  const HomeViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.h,
        ),
        UserName(),
        SizedBox(
          height: 20.h,
        ),
        Container(width: 350.w, child: SearchTextField()),
        SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.amberAccent,
          width: 400.w,
          height: 200.h,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [Article()],
        )
      ],
    );
  }
}
