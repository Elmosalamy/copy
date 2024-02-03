import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../Core/Utils/Constants.dart';

class PageItem {
  @required
  final String? image;
  @required
  final String? title;
  @required
  final String? body;

  PageItem({this.image, this.body, this.title});
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageItem> boarding = [
    PageItem(
        image: 'assets/images/on1.png',
        title: 'Soil Detection',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.'),
    PageItem(
        image: 'assets/images/on2.png',
        title: 'Suitable Plant',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.'),
    PageItem(
        image: 'assets/images/on3.png',
        title: 'Smart Sensor',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.'),
    PageItem(
        image: 'assets/images/on1.png',
        title: 'Disease Detection',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.'),
    PageItem(
        image: 'assets/images/on5.png',
        title: 'Growing Tips',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.'),
    PageItem(
        image: 'assets/images/on6.png',
        title: 'Consultation',
        body:
            'Our goal is to ensure that you have everything you need to feel comfortable, confident, and ready to make an impact.')
  ];
  var pageController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(20.0.r),
        child: Column(children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              itemBuilder: (context, index) =>
                  buildBoardingItem(boarding[index]),
              itemCount: boarding.length,
              onPageChanged: (index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
            ),
          ),
           SizedBox(height: 15.h),
          Align(
            alignment: Alignment.topLeft,
            child: SmoothPageIndicator(
              controller: pageController,
              count: boarding.length,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.Kprimarycolor,
                dotWidth: 10.w,
                dotHeight: 5.h,
              ),
            ),
          ),
           SizedBox(height: 20.h),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child:  Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff858484),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                child: Container(
                  width: 79.w,
                  height: 33.h,
                  decoration: BoxDecoration(
                      color: AppColor.Kprimarycolor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Widget buildBoardingItem(PageItem x) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(child: Image(image: AssetImage('${x.image}'))),
         SizedBox(height: 12.h),
        Text(
          '${x.title}',
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
            color: AppColor.Kprimarycolor,
          ),
        ),
         SizedBox(height: 12.h),
        Text(
          '${x.body}',
          style:  TextStyle(
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff858484),
          ),
        ),
         SizedBox(height: 15.h),
      ]);
}
