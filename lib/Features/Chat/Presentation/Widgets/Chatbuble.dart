import 'package:agriguide/Core/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatbuble extends StatelessWidget {
  const chatbuble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Text(
          'Hello',
        ),
      ),
    );
  }
}

class chatbubleforfriend extends StatelessWidget {
  const chatbubleforfriend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Kprimarycolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
        ),
        child: Text(
          'Hello',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
