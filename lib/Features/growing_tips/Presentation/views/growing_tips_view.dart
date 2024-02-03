import 'package:agriguide/Features/growing_tips/Presentation/views/widgets/custom_app_bar.dart';
import 'package:agriguide/Features/growing_tips/Presentation/views/widgets/tips_item.dart';
import 'package:agriguide/Features/growing_tips/Presentation/views/widgets/tips_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GrowingTips extends StatelessWidget {
  const GrowingTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(16.r),
          child: Column(
            children: [
               SizedBox(
                height: 5.h,
              ),
              const CustomAppBar(
                title: 'Growing Tips',
              ),
               SizedBox(
                height: 40.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TipsItem(
                    title: 'Basic Tips',
                    image: 'assets/images/basic-tips.png',
                  ),
                  TipsItem(
                    title: 'Sunlight Tips',
                    image: 'assets/images/sun-tips.png',
                  ),
                  TipsItem(
                    title: 'Watering Tips',
                    image: 'assets/images/water-tips.png',
                  ),
                ],
              ),
               SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const TipsListViewItem(),
                  separatorBuilder: (context, index) => Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.0.h),
                    child: Divider(color: Colors.black.withOpacity(.10),),
                  ),
                  itemCount: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
