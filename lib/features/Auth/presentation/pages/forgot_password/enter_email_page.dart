import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/verify_email.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class EnterEmailPage extends ConsumerStatefulWidget {
  const EnterEmailPage({super.key});

  @override
  ConsumerState<EnterEmailPage> createState() => _EnterEmailPageState();
}

class _EnterEmailPageState extends ConsumerState<EnterEmailPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authProvider.notifier);
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: NefPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Image.asset("assets/images/forgot_password.png"),
                const Text(
                  "Please Enter your email to change password ?",
                  style: NefTypographyHelper.hLgBold,
                ),
                const SizedBox(height: 10),
                NefTextFormField(
                  // validator: (value) {
                  //   return
                  // },
                  hintText: "Enter you email",
                  controller: authNotifier.emailController,
                ),
                const Text("We will send you verification code on your email"),
                const SizedBox(
                  height: 10,
                ),
                NefElevatedButton(
                    text: "Send Code",
                    onPressed: () {
                      authNotifier.sendOtpToEmail();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyEmaiPage(
                                    isPasswordChange: true,
                                  )));
                    }),
              ],
            ),
          ),
        ),
      ),
    ); // Your UI here
  }
}
