// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class FirebaseApi {
//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

//   Future<void> registerWithNotificationHub() async {
//     try {
//       String? fcmToken = await _firebaseMessaging.getToken();
//       SharedPreferences sharedPreferences =
//           await SharedPreferences.getInstance();
//       var regId = sharedPreferences.getString("registrationID");
//       var storedToken = sharedPreferences.getString("FCMtoken");

//       if (regId == null) {
//         // Perform registration with Notification Hub if not already registered
//         var resultString = await _registerWithNotificationHub(fcmToken);
//         print(resultString);
//         sharedPreferences.setString("registrationID", resultString!);
//         sharedPreferences.setString("FCMtoken", fcmToken!);
//       } else if (storedToken != fcmToken) {
//         // Refresh registration with Notification Hub if FCM token has changed
//         String? resultString = await _registerWithNotificationHub(fcmToken);
//         print(resultString);
//         sharedPreferences.setString("registrationID", resultString!);
//         sharedPreferences.setString("FCMtoken", fcmToken!);
//       } else {
//         // Already registered with Notification Hub
//         print("Previously Registered Successfully - RegId : $regId");
//       }
//     } catch (e) {
//       print("Failed to complete registration: $e");
//       // Handle any exceptions here.
//     }
//   }

//   Future<String?> _registerWithNotificationHub(String? fcmToken) async {
//     // Perform the registration with Notification Hub here.
//     // You can use HTTP requests to your server or any other method to register with Notification Hub.
//     // Return the registration ID from the server response or any unique identifier.
//     // For simplicity, we'll return the FCM token as the registration ID.
//     return fcmToken;
//   }
// }
