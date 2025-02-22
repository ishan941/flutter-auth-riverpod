import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/rid_dropdown.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/upload_profile.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/verify.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _userNameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  String? selectedGender;

  @override
  void dispose() {
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _userNameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _handleSignUp() async {
    final email = _emailController.text;
    final username = _userNameController.text;
    final password = _passwordController.text;

    if (email.isEmpty || username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields.')),
      );
      return;
    }

    try {
      await ref.read(authProvider.notifier).signUpUser();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Signed up successfully!')),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);

    return Scaffold(
      appBar: NefAppBar(title: ""),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: NefPadding(
            child: Column(
              children: [
                const Text(
                  "Sign up with your email or phone number",
                  style: NefTypographyHelper.hLgMedium,
                ),
                const SizedBox(height: NefSpacing.spacing7),
                NefTextFormField(
                  labelText: 'First name',
                  controller: authNotifier.firstNameController,
                  focusNode: _userNameFocusNode,
                ),
                NefTextFormField(
                  labelText: 'Last name',
                  controller: authNotifier.lastNameController,
                  focusNode: _userNameFocusNode,
                ),
                NefTextFormField(
                  labelText: 'Email',
                  controller: authNotifier.emailController,
                  focusNode: _emailFocusNode,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(NefSpacing.spacing2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(NefSpacing.spacing2),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(NefSpacing.spacing2),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                  initialCountryCode: 'NP',
                  controller: authNotifier.contactNumberController,
                ),
                NefDropdownGenderField(
                  value: authState.gender,
                  hintText: "Gender",
                  onChanged: (gender) {
                    ref.read(authProvider.notifier).setGender(gender);
                  },
                ),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: 'By signing up, you agree to the ',
                              style: TextStyle(
                                  color: Colors.black), // Default text color
                              children: [
                                TextSpan(
                                  text: 'Terms of service',
                                  style: TextStyle(
                                      color:
                                          primaryColor), // Color for "Terms of service"
                                ),
                                TextSpan(
                                  text: ' and ',
                                ),
                                TextSpan(
                                  text: 'Privacy policy.',
                                  style: TextStyle(
                                      color:
                                          primaryColor), // Color for "Privacy policy."
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: NefSpacing.spacing10),
                NefElevatedButton(
                  text: "Next",
                  // onPressed: _handleSignUp,
                  onPressed: () =>
                      //     ref.watch(authProvider.notifier).signUpUser()

                      Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => UploadProfile()),
                  ),
                  // authState.maybeWhen(loading: () => null, orElse: _handleSignUp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        'Sign In',
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
}
