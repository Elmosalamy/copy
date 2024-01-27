import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/ChatMsg.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/Chattextfield.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/ProfileName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      margin: EdgeInsets.only(right: 16, left: 16, top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        color: AppColor.Gray,
      ),
      child: Column(
        children: [
          ProfileName(),
          Container(
              width: 300.w,
              child: Divider(
                color: Color(0xffB7B7B7),
              )),
          ChatMessages(),
          ChatTextfield(),
        ],
      ),
    );
  }
}
