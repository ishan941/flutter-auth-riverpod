import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';

import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

import '../../../../core/utils/string_util.dart';

class ProfileConfirmation extends ConsumerStatefulWidget {
  const ProfileConfirmation({super.key});

  @override
  ConsumerState<ProfileConfirmation> createState() =>
      _ProfileConfirmationState();
}

class _ProfileConfirmationState extends ConsumerState<ProfileConfirmation> {
  @override
  Widget build(BuildContext context) {
    final userContact =
        ref.watch(authProvider.notifier).contactNumberController.text;
    final userEmail = ref.watch(authProvider.notifier).emailController.text;
    final userGender = ref.read(authProvider).gender;
    final userName =
        '${ref.watch(authProvider.notifier).firstNameController.text} '
                '${ref.watch(authProvider.notifier).lastNameController.text}'
            .trim();

    return Scaffold(
      appBar: NefAppBar(title: "title"),
      body: NefPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
              ),
            ),
            const Text("Profile"),
            NefElevationBackButton(
                isForm: false,
                isTextCenter: false,
                text: "Full Name: $userName"),
            const SizedBox(height: 10),
            NefElevationBackButton(
                isForm: false,
                isTextCenter: false,
                text: "Contact Number:  $userContact"),
            const SizedBox(height: 10),
            NefElevationBackButton(
                isForm: false, isTextCenter: false, text: "Email: $userEmail"),
            const SizedBox(height: 10),
            // NefElevationBackButton(
            //     isForm: false,
            //     isTextCenter: false,
            //     text: "Gender: $userGender"),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                    width: 120, child: NefElevationBackButton(text: backStr)),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: RidElevatedButton(
                        text: "Next",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileConfirmation()));
                        }))
              ],
            )
          ],
        ),
      ),
    );
  }
}
