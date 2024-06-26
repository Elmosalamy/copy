import 'dart:async';

import 'package:agriguide/Core/Utils/AppTextStyle.dart';
import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:agriguide/Features/Bottom_nav/Presentation/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    Timer(
        Duration(seconds: 3), () => Navigator.pushNamed(context, Bottomnav.id));
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
              child: Image.asset(width: 120.w, height: 120.h, logo)),
          FadeTransition(
            opacity: _textanimation,
            child: Text('Agri Guide', style: CustomTextStyle.Knewave400Style30),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
