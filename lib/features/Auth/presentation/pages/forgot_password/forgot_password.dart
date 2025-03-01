import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authProvider.notifier);
    return Scaffold(
      appBar: NefAppBar(title: "Forgot paswrd"),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/forgot_password.png"),
            NefTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }

                return null;
              },
              hintText: "Confirm Password",
              controller: authNotifier.newPasswordController,
            ),
            NefTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                if (value != confirmPasswordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
              hintText: "Confirm Password",
              controller: confirmPasswordController,
            ),
            NefElevatedButton(text: "Change Password", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
