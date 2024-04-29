import 'package:agriguide/Features/Bottom_nav/Presentation/BottomNav.dart';
import 'package:agriguide/Features/Splash/Presentation/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Features/Community/Presentation/views/CommunityView.dart';
import 'Features/Onboarding/Presentation/OnBoardingview.dart';
import 'Features/growing_tips/Presentation/views/growing_tips_view.dart';
import 'Features/sensor/presentation/view/sensor_screen.dart';
import 'Features/suitaple_plants/presentation/view/suitable_plants_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        initialRoute: '/',
        routes: {
          // '/': (context) => SplashView(),
          '/': (context) => SuitablePlantsView(),
          Bottomnav.id: (context) => Bottomnav()
        },
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 690),
    );
  }
}
