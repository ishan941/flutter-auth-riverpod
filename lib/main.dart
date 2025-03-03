import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nepstayapp/core/utils/theme_helper.dart';
import 'package:nepstayapp/features/initialPage/splash_screen.dart';
import 'package:nepstayapp/firebase_options.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Hive.initFlutter();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize Firebase Messaging
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  // Get FCM token for debugging
  String? fcmToken = await messaging.getToken();
  print("FCM Token: $fcmToken");

  // Set preferred device orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize Local Notifications
  await _initializeLocalNotifications();

  // Start the app
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _initializeLocalNotifications() async {
  // Initialize Flutter Local Notifications Plugin
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings(
          '@mipmap/ic_launcher'); // Customize with your app icon

  final InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  // Handle foreground notifications
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {
      // Show local notification when app is in foreground
      _showNotification(message.notification!);
    }
  });
}

// Show notification
Future<void> _showNotification(RemoteNotification notification) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
    'your_channel_id', // Channel ID
    'your_channel_name', // Channel name
    channelDescription: 'your_channel_description', // Channel description
    importance: Importance.max,
    priority: Priority.high,
  );

  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);

  await FlutterLocalNotificationsPlugin().show(
    0,
    notification.title,
    notification.body,
    platformChannelSpecifics,
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.lightTheme(),
      home: const SplashScreen(),
    );
  }
}
