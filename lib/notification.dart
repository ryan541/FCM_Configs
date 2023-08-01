import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const String route = '/notification';

  @override
  Widget build(BuildContext context) {
    final RemoteMessage? message =
        ModalRoute.of(context)?.settings.arguments as RemoteMessage?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Title : ${message?.notification?.title ?? "Null"}'),
            Text('Body : ${message?.notification?.body ?? "Null"}'),
            Text('Payload : ${message?.data ?? "Null"}'),
          ],
        ),
      ),
    );
  }
}
