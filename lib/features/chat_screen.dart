import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.message});
  final RemoteMessage message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(" message title : ${message.notification?.title}"),
            Text(" message body : ${message.notification?.body}"),
          ],
        ),
      ),
    );
  }
}
