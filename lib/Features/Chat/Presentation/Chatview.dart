import 'package:agriguide/Core/Constants.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/ChatMsg.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/ChatViewbody.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/Chatbuble.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/Chattextfield.dart';
import 'package:agriguide/Features/Chat/Presentation/Widgets/ProfileName.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ChatViewBody(),
    );
  }
}
