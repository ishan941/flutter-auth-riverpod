import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/profile_confirmation.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

class UploadProfile extends ConsumerStatefulWidget {
  const UploadProfile({super.key});

  @override
  ConsumerState<UploadProfile> createState() => _UploadProfileState();
}

class _UploadProfileState extends ConsumerState<UploadProfile> {
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>(); // Form key to manage the validation

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.read(authProvider.notifier);
    return Scaffold(
      appBar: NefAppBar(title: "Profile"),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: NefPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(
                          bottom: 10,
                          right: 0.7,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: primaryColor,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: whiteColor,
                              size: 15,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Upload Image",
                ),
                SizedBox(height: 20),
                NefTextFormField(
                  hintText: "Street",
                  controller: authNotifier.streetController,
                ),
                NefTextFormField(
                  hintText: "City",
                  controller: authNotifier.cityController,
                ),
                NefTextFormField(
                  hintText: "District",
                  controller: authNotifier.districtController,
                ),
                NefTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    labelText: enterYourPasswordStr,
                    controller: authNotifier.passwordController,
                    obscureText: true,
                    focusNode: _passwordFocusNode,
                    suffixIcon: Icons.visibility_off_outlined),
                NefTextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      if (value != authNotifier.passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    labelText: confimPassword,
                    controller: _passwordController,
                    obscureText: true,
                    focusNode: _passwordFocusNode,
                    suffixIcon: Icons.visibility_off_outlined),
                const Text("Atleast 1 number or a special character"),
                const SizedBox(height: NefSpacing.spacing4),
                Row(
                  children: [
                    SizedBox(
                        width: 120,
                        child: NefElevationBackButton(text: backStr)),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: RidElevatedButton(
                        text: "Next",
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // If the form is valid, proceed to next page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileConfirmation(),
                              ),
                            );
                          } else {
                            // If validation fails, show a message
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Please fix the errors'),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
