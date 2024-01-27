import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        margin: EdgeInsets.only(left: 8, right: 8),
        width: 150.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.asset(
                  'assets/images/ChangePass (1).jpg',
                  height: 160.h,
                  width: 150.w,
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.Gray,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'what fertilizers',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: "Inter",
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Article.Category_Name! dfghjklouglidhcvgbhjmv2',
                    maxLines: 2,
                    style: const TextStyle(fontSize: 12, fontFamily: "Inter"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
