import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/login_page.dart';
import 'package:nepstayapp/features/Auth/presentation/provider/auth_notifier.dart';

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
      appBar: NefAppBar(title: "title"),
      body: SingleChildScrollView(
        child: NefPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/IMG_4610.jpg"),
                  radius: 50,
                  backgroundColor: Colors.grey,
                ),
              ),
              const Text("Profile"),
              const SizedBox(height: 20),
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
                  isForm: false,
                  isTextCenter: false,
                  text: "Email: $userEmail"),
              const SizedBox(height: 10),
              NefElevationBackButton(
                  isForm: false,
                  isTextCenter: false,
                  text: "Gender: $userGender"),
              const SizedBox(height: 10),
              NefElevationBackButton(
                  isForm: false,
                  isTextCenter: false,
                  text: "District: $district"),
              const SizedBox(height: 10),
              NefElevationBackButton(
                  isForm: false, isTextCenter: false, text: "Street: $street"),
              const SizedBox(height: 10),
              NefElevationBackButton(
                  isForm: false, isTextCenter: false, text: "City: $city"),
              const SizedBox(
                height: 10,
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
      ),
    );
  }
}
