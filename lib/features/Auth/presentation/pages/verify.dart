import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/set_password.dart';

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(phoneVerificationStr),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Please verify you email',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'Enter your OTP code',
              style: NefTypographyHelper.bodyLgRegular.copyWith(color: grey400),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              },
            ),
            const SizedBox(height: 20),
            NefElevatedButton(
                text: "Confirm verification",
                onPressed: () {
                  Navigator.push(context,
                      (MaterialPageRoute(builder: (context) => SetPassword())));
                }),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn’t receive code? "),
                InkWell(
                    child: Text(
                  "Resend it",
                  style: TextStyle(color: primaryColor),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
