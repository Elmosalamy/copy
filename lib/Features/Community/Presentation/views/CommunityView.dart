import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../Core/widgets/SearchTextField.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    String post =
        'What fertilizers does the plant need in its early stages of vegetative growth, and what does it need for root growth,  as well as for the appearance of flowers and improvement of fruits?';
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const SearchTextField(
                width: 326,
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      CommunityListViewItem(post: post),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 16.h,
                  ),
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityListViewItem extends StatelessWidget {
  const CommunityListViewItem({
    super.key,
    required this.post,
  });

  final String post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 415.h,
      padding:
          EdgeInsets.only(top: 16.h, bottom: 16.h, left: 18.w, right: 13.w),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/person-profile.png'),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ahmed',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 17.sp),
                  ),
                  Text(
                    '4 days',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: const Color(0xff858484)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 27.h,
          ),
          Text(
            post,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 11.h,
          ),
          Image.asset('assets/images/community-image.png'),
          SizedBox(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Image.asset(
                'assets/images/like.png',
              ),
              SizedBox(
                width: 4.w,
              ),
              const Text(
                'like',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 40.w,
              ),
              Image.asset(
                'assets/images/dilike.png',
              ),
              SizedBox(
                width: 4.w,
              ),
              const Text(
                'dislike',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 40.w,
              ),
              Image.asset(
                'assets/images/answer.png',
              ),
              SizedBox(
                width: 4.w,
              ),
              const Text(
                'answer',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
