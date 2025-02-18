import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/route_constants.dart';
import 'package:nepstayapp/core/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToAnotherPage();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromARGB(0, 255, 254, 254),
        systemNavigationBarColor: whiteColor,
        statusBarIconBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Expanded(
            //   child: Container(
            //     color: whiteColor,
            //     child: Center(
            //       child: FractionallySizedBox(
            //         widthFactor: 0.3,
            //         heightFactor: 0.3,
            //         child: Image.asset(
            //           "assets/images/KMC_Logo 2.png",
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  navigateToAnotherPage() async {
    Future.delayed(
      const Duration(seconds: 2),
      () => RouteGenerator.navigateToPage(context, Routes.loginPageRouter),
    );

    // // final prefs = await SharedPreferences.getInstance();
    // // final bool isLogin = prefs.getBool('isLogin') ?? false;
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(builder: (context) => const LogIn()
    //           // !isLogin ? Login() : NavBar()
    //           ),
    //       (Route<dynamic> route) => false);
    // });
  }
}
