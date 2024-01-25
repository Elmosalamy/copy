import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                logo,
                height: 100.h,
                width: 150.w,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Container(
            color: Ksecondarycolor,
            child: Column(
              children: [
                Text(
                  'Article.Post_Title!',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Article.Category_Name!',
                  maxLines: 2,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
