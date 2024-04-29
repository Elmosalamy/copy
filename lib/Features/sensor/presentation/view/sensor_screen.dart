import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../growing_tips/Presentation/views/widgets/custom_app_bar.dart';

class SensorScreen extends StatefulWidget {
  const SensorScreen({super.key});

  @override
  State<SensorScreen> createState() => _SensorScreenState();
}

class _SensorScreenState extends State<SensorScreen> {
  bool switchValue =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(14.r),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Smart Sensor',
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 348.w,
              height: 176.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE9E9E9)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Sensor',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                        color: AppColor.Kprimarycolor),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  FlutterSwitch(
                    width: 70.0,
                    height: 30.0,
                    valueFontSize: 18,
                    activeColor:AppColor.Kprimarycolor ,
                    activeTextColor: Colors.white,
                    activeText: 'ON',
                    toggleSize: 22.0,
                    value: switchValue,
                    padding: 3,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        switchValue=!switchValue;
                      });
                    },
                  ),
                  // Switch(
                  //   value: true,
                  //   onChanged: (value) {},
                  //   activeTrackColor: AppColor.Kprimarycolor,
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: 348.w,
              height: 348.h,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE9E9E9)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    'Humidity',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                        color: AppColor.Kprimarycolor),
                  ),
                  SizedBox(
                    height: 59.h,
                  ),
                   CircularPercentIndicator(
                    radius: 90.0,
                    lineWidth: 15,
                    backgroundColor: Color(0xff858484),
              backgroundWidth:5 ,
                    percent: .68,
                    center:  Text("68%",style: TextStyle(fontSize: 48.sp,fontWeight: FontWeight.w400),),
                    progressColor: AppColor.Kprimarycolor,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
