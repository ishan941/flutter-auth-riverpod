import 'package:flutter/material.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/utils/route_constants.dart';
import 'package:nepstayapp/core/utils/route_generator.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/sign_up_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NefPadding(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset("assets/images/welcome.png"),
            const Spacer(),
            NefElevatedButton(
                text: "Create on account",
                onPressed: () {
                  Navigator.push(context,
                      (MaterialPageRoute(builder: (context) => SignUpPage())));
                }),
            NefElevationBackButton(
              text: "Log in",
              onPressed: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => LoginPage())));
              },
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
