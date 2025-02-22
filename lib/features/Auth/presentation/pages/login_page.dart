import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_nav_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/data/model/auth_state/auth_state.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/sign_up_page.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final authNotifier = ref.watch(authProvider.notifier);

    return Scaffold(
      appBar: NefAppBar(
        title: "",
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: NefPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 150, child: Image.asset("assets/images/Splash.png")),
              const SizedBox(height: NefSpacing.spacing4),
              NefTextFormField(
                labelText: enterYourEmailStr,
                controller: _emailController,
                focusNode: _emailFocusNode,
              ),
              NefTextFormField(
                  labelText: enterYourPasswordStr,
                  controller: _passwordController,
                  obscureText: true,
                  focusNode: _passwordFocusNode,
                  suffixIcon: Icons.visibility_off_outlined),
              Row(
                children: [
                  Checkbox(
                      value: authState.rememberMe,
                      onChanged: (bool? value) {
                        // authNotifier.toggleRememberMe(value ?? false);
                      }),
                  const Text("Remember Me"),
                ],
              ),
              const SizedBox(height: NefSpacing.spacing2),
              NefElevatedButton(
                text: "Sign In",
                onPressed: _handleSignIn,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: const Text(
                      signUpStr,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSignIn() async {
    // final email = _emailController.text.trim();
    // final password = _passwordController.text;

    // if (email.isEmpty || password.isEmpty) {
    //   _showError(context, 'Please fill in both fields.');
    //   return;
    // }

    // await ref.read(authProvider.notifier).login(email, password);
    // final authState = ref.read(authProvider);

    // if (authState is Authenticated) {
    //   // InfoHelper.showSuccessToast(context, "successfully login");
    //   Navigator.pushAndRemoveUntil(
    //       context,
    //       (MaterialPageRoute(builder: (context) => NefNavBar())),
    //       (Route<dynamic> route) => false);
    // } else if (authState is Error) {
    //   // InfoHelper.showSuccessToast(context, "Failed login");
    // }
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(message, style: const TextStyle(color: Colors.red))),
    );
  }
}
