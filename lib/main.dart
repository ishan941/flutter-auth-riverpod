// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nepstayapp/core/nef_custom/nef_nav_bar.dart';
import 'package:nepstayapp/features/Auth/data/model/hive/user.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/sign_up_screen.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/verify.dart';
import 'package:nepstayapp/features/Home/presentation/pages/silver_app_bar.dart';
import 'package:nepstayapp/firebase_options.dart';

import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Hive.initFlutter();

  // Hive.registerAdapter(UserAdapter());
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
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
        // home: NefNavBar()
        // home: SliverAppBarExample()
        home: SignUpScreen());
  }
}
