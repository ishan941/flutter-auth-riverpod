import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_nav_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/utils/info_helper.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
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
        showBackButton: false,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: NefPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                    height: 150,
                    child: Image.asset("assets/images/Splash.png")),
                const SizedBox(height: NefSpacing.spacing4),
                NefTextFormField(
                  labelText: enterYourEmailStr,
                  controller: authNotifier.emailController,
                  focusNode: _emailFocusNode,
                ),
                NefTextFormField(
                    labelText: enterYourPasswordStr,
                    controller: authNotifier.passwordController,
                    obscureText: true,
                    focusNode: _passwordFocusNode,
                    suffixIcon: Icons.visibility_off_outlined),
                Row(
                  children: [
                    Checkbox(
                        value: authState.rememberMe,
                        onChanged: (bool? value) {
                          authNotifier.toggleRememberMe(value ?? false);
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
      ),
    );
  }

  void _handleSignIn() async {
    await ref.read(authProvider.notifier).login();

    final authState = ref.read(authProvider);

    if (authState.isSuccess) {
      InfoHelper.showSuccessToast(context, "Successfully login!");
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const NefNavBar()),
        (Route<dynamic> route) => false,
      );
    } else {
      InfoHelper.showErrorToast(context, "Failed to login!");
    }
  }
}
