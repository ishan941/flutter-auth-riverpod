import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NefAppBar(title: "Forgot paswrd"),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/forgot_password.png"),
            NefTextFormField(
              validator: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
