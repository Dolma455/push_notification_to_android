import 'package:firebase_core/firebase_core.dart';
import 'package:first_project_android/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

AndroidNotificationChannel channel = const AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description:
      'This channel is used for important notifications.', // description
  importance: Importance.high,
);
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyD9k_6i94Hapz_MS1eg1xOSB97Nk8Nivgc",
    projectId: "flutterweb-968c2",
    storageBucket: "flutterweb-968c2.appspot.com",
    messagingSenderId: "225378996225",
    appId: "1:225378996225:web:53511b8f54470d6a953000",
  ));
  runApp(const MyApp());
}
