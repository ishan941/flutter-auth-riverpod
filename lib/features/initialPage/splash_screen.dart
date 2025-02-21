import 'package:flutter/material.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';

import 'package:nepstayapp/core/utils/shared_preference.dart';
import 'package:nepstayapp/features/initialPage/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  SharedPref? sharedPref;
  String version = 'Version 1.0.0'; // Example version

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _initializeApp();

    // Animation Setup
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    // Start the animation
    _controller.forward();
  }

  Future<void> _initializeApp() async {
    Future.delayed(const Duration(seconds: 3), () {
      _initializeSharedPrefs();
      _checkLoginStatus();
    });
  }

  Future<void> _initializeSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    sharedPref = SharedPref(sp: prefs);
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    if (sharedPref == null) return;
    bool isLoggedIn = await _isUserLoggedIn();
    Future.delayed(const Duration(seconds: 2), () {
      if (isLoggedIn) {
        // Navigate to Home or Dashboard
      } else {
        // Navigate to Onboarding or Login
      }
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
        (Route<dynamic> route) => false, // This removes all previous routes
      );
    });
  }

  Future<bool> _isUserLoggedIn() async {
    String token = sharedPref!.readStringValFrmPreference('accessTokenKey');
    bool rememberMe = sharedPref!.readBoolValFrmPreference('remember_me');
    return token.isNotEmpty && rememberMe;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: NefSpacing.spacing30,
            color: primaryColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: FadeTransition(
                          opacity: _fadeAnimation,
                          child: Image.asset(
                            "assets/images/Splash.png",
                            width: NefSpacing.spacing50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
