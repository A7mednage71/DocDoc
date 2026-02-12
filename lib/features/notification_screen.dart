import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required this.message});
  final RemoteMessage message;

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Message Title : ${widget.message.notification?.title}"),
          Text("Message Body : ${widget.message.notification?.body}"),
        ],
      )),
    );
  }
}
