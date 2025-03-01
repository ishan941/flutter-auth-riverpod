import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nepstayapp/core/utils/theme_helper.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/forgot_password/forgot_password.dart';
import 'package:nepstayapp/features/initialPage/splash_screen.dart';
import 'package:nepstayapp/firebase_options.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Hive.initFlutter();

  // Hive.registerAdapter(UserAdapter());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Get FCM token
  String? fcmToken = await FirebaseMessaging.instance.getToken();
  print("FCM Token: $fcmToken"); // Debugging

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ProviderScope(child: MyApp()));
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
    // deepLink();
    super.initState();
  }

  // deepLink() async {
  //   final PendingDynamicLinkData? initialLink =
  //       await FirebaseDynamicLinks.instance.getInitialLink();

  //   if (initialLink != null) {
  //     final Uri deepLink = initialLink.link;
  //   }

  //   FirebaseDynamicLinks.instance.onLink.listen(
  //     (pendingDynamicLinkData) {
  //       if (pendingDynamicLinkData != null) {
  //         final Uri deepLink = pendingDynamicLinkData.link;
  //         _navigatorKey.currentState?.pushNamed(deepLink.path);
  //       }
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: _navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeHelper.lightTheme(),
        // home: NefNavBar()
        // home: SliverAppBarExample()
        // home: SignUpScreen());
        // home: WelcomePage());
        home: SplashScreen());
  }
}
