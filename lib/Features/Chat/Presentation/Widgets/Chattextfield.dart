import 'package:agriguide/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTextfield extends StatelessWidget {
  const ChatTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColor.Kprimarycolor,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: CircleAvatar(
                  backgroundColor: AppColor.Kprimarycolor,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
