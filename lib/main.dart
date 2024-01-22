import 'package:agriguide/Features/Bottom_nav/Presentation/BottomNav.dart';
import 'package:agriguide/Features/Splash/Presentation/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          '/': (context) => SplashView(),
          Bottomnav.id: (context) => Bottomnav()
        },
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 690),
    );
  }
}
