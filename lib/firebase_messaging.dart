// import 'package:firebase_messaging/firebase_messaging.dart';

// class CustomNotificationListener {
//   void onNotificationReceived(RemoteMessage message) {
//     String? title = message.notification?.title;
//     String? body = message.notification?.body;
//     Map<String, String> data = Map<String, String>.from(message.data);
//     if (message != null) {
//       print("Message Notification Title: $title");
//       print("Message Notification Body: $body");
//     }

//     if (data.isNotEmpty) {
//       data.forEach((key, value) {
//         print("key: $key, value: $value");
//       });
//     }
//   }
// }

// // Example of using the custom notification listener
// void main() {
//   CustomNotificationListener customNotificationListener =
//       CustomNotificationListener();

//   // Subscribe to onMessage stream
//   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     customNotificationListener.onNotificationReceived(message);
//   });
// }
