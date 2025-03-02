import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography_helper.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';
import 'package:nepstayapp/features/profile/presentation/screens/edit_profile.dart';
import 'package:nepstayapp/features/profile/presentation/screens/verify_kyc.dart';
import 'package:nepstayapp/features/profile/presentation/screens/view_profile.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authProvider.notifier);
    final authState = ref.watch(authProvider);
    final userContact =
        ref.watch(authProvider.notifier).contactNumberController.text;
    final userEmail = ref.watch(authProvider.notifier).emailController.text;
    final userGender = ref.read(authProvider).gender;
    final district = ref.watch(authProvider.notifier).districtController.text;
    final street = ref.watch(authProvider.notifier).streetController.text;
    final city = ref.watch(authProvider.notifier).cityController.text;
    final userName =
        '${ref.watch(authProvider.notifier).firstNameController.text} '
                '${ref.watch(authProvider.notifier).lastNameController.text}'
            .trim();

    return Scaffold(
      appBar: NefAppBar(
        title: "Profile",
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: primaryColor,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/IMG_4610.jpg"),
                      radius: 50,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Ishan Shrestha",
                    style: NefTypography.button,
                  ),
                  const Text(
                    "iahan.esan18@gmail.com",
                    style: NefTypography.button,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    child: NefElevatedButton(
                        backgroundColor: Colors.blue,
                        text: "Edit Profile",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: NefPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PERSIONAL INFO",
                      style: NefTypographyHelper.bodyLgMedium,
                    ),
                    NefForwardButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewProfile()));
                      },
                      label: "My Account",
                      icon: Icons.person_outline_sharp,
                    ),
                    Divider(),
                    NefForwardButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VerifyKyc()));
                      },
                      label: "verify kyc",
                      icon: Icons.personal_injury_outlined,
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            NefElevationBackButton(
                text: "Logout",
                onPressed: () {
                  authNotifier.logout();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (Route<dynamic> route) => false);
                }),
          ],
        ),
      ),
    );
  }
}
