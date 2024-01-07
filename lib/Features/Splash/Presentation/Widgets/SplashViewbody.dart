import 'package:agriguide/Core/Constants.dart';
import 'package:agriguide/Features/Bottom_nav/Presentation/BottomNav.dart';
import 'package:agriguide/Features/Onboarding/Presentation/OnBoardingview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewbody extends StatefulWidget {
  const SplashViewbody({super.key});

  @override
  State<SplashViewbody> createState() => _SplashViewbodyState();
}

class _SplashViewbodyState extends State<SplashViewbody>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _textcontroller;
  late final Animation<double> _animation;
  late final Animation<double> _textanimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(reverse: true);
    _textcontroller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);
    _textanimation = CurvedAnimation(
        parent: _textcontroller, curve: Curves.fastEaseInToSlowEaseOut);
    _animation = CurvedAnimation(
        parent: _controller, curve: Curves.fastEaseInToSlowEaseOut);
    goToNextView();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(),
          ScaleTransition(
              scale: _animation,
              child: Image.asset(width: 100, height: 100, logo)),
          FadeTransition(
            opacity: _textanimation,
            child: Text(
              'Agri Guide',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Kprimarycolor,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => OnBoardingView(),
          transition: Transition.leftToRightWithFade);
    });
  }
}
