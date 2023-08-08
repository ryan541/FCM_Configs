// import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'firebase_api.dart';
// import 'notification_settings.dart';

// class FirebaseApi {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   Future<void> initNotifications() async {
//     await _firebaseMessaging.requestPermission();
//     final fCMToken = await _firebaseMessaging.getToken();
//     print('Token :  $fCMToken');
//     initPushNotifications();
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//   }

//   Future<void> initPushNotifications() async {
//     await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     // Initialize Notification Hub with the provided settings
//     NotificationSettings notificationSettings = NotificationSettings();
//     NotificationHub.start(
//       application: this.getApplication(),
//       hubName: notificationSettings.hubName,
//       connectionString: notificationSettings.hubListenConnectionString,
//     );

//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//   }

//   // ... Rest of the code
// }