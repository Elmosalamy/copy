import 'package:agriguide/Features/Chat/Presentation/Widgets/Chatbuble.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        reverse: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return chatbubleforfriend();
        },
      ),
    );
  }
}
