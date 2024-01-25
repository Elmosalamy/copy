import 'package:agriguide/Core/Constants.dart';
import 'package:agriguide/Features/Home/Presentation/Widgets/HomeBody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeViewbody());
  }
}
