import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/info_helper.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/forgot_password/forgot_password.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class VerifyEmaiPage extends ConsumerStatefulWidget {
  bool? isPasswordChange;
  VerifyEmaiPage({super.key, this.isPasswordChange = false});

  @override
  ConsumerState<VerifyEmaiPage> createState() => _VerifyEmaiPageState();
}

class _VerifyEmaiPageState extends ConsumerState<VerifyEmaiPage> {
  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(phoneVerificationStr),
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
                style:
                    NefTypographyHelper.bodyLgRegular.copyWith(color: grey400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              OtpTextField(
                numberOfFields: 6,
                borderColor: const Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  final email = authNotifier.emailController.text;
                  authNotifier.verifyEmail(email, verificationCode);
                },
              ),
              const SizedBox(height: 20),
              NefElevatedButton(
                text: "Confirm verification",
                onPressed: () async {
                  // Optionally handle success or failure before navigation
                  final authState = ref.watch(authProvider);
                  final verificationSuccess = authState.isSuccess;

                  if (verificationSuccess) {
                    widget.isPasswordChange!
                        ? InfoHelper.showSuccessToast(
                            context, "Please enter you new password")
                        : InfoHelper.showSuccessToast(context,
                            "Congratulations! Your Account has been Created");
                    widget.isPasswordChange!
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()))
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                  } else {
                    // Show a dialog or a message indicating failure
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Verification Failed"),
                        content:
                            const Text('Please check your OTP or try again.'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ]),
      ),
    ); // Your UI here
  }
}
