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
import 'package:nepstayapp/features/profile/presentation/notifier/profile_notifier.dart';
import 'package:nepstayapp/features/profile/presentation/screens/edit_profile.dart';
import 'package:nepstayapp/features/profile/presentation/screens/kyc_detail_page.dart';
import 'package:nepstayapp/features/profile/presentation/screens/verify_kyc.dart';
import 'package:nepstayapp/features/profile/presentation/screens/view_profile.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetch();
    });
  }

  void fetch() {
    ref.read(profileProvider.notifier).getUserDetails(1);
  }

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.watch(authProvider.notifier);
    final profileState = ref.watch(profileProvider);

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
                  profileState.when(
                    initial: () => const Center(child: Text("No Data")),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    loaded: (user, __) {
                      return Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              backgroundImage: user!.images.isNotEmpty &&
                                      user.images.first.url != null
                                  ? NetworkImage(user
                                      .images.first.url!) // Load from network
                                  : const AssetImage(
                                          "assets/images/IMG_4610.jpg")
                                      as ImageProvider, // Fallback image
                              radius: 50,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${user.firstName ?? ''} ${user.lastName ?? ''}"
                                        .trim()
                                        .isEmpty
                                    ? "null"
                                    : "${user.firstName ?? ''} ${user.lastName ?? ''}",
                                style: NefTypography.button,
                              ),
                              const SizedBox(width: 10),
                              user.verified
                                  ? const Icon(
                                      Icons.verified,
                                      color: whiteColor,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                          Text(
                            user.email ?? "",
                            style: NefTypography.button,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                    error: (message) => Center(child: Text(message)),
                    success: (bool? isSuccess) {
                      return SizedBox();
                    },
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
                                  builder: (context) => const EditProfile()));
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
                    const Text(
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
                    profileState.maybeWhen(
                        loaded: (user, isSuccess) {
                          return user?.verified == true
                              ? NefForwardButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                KycDetailPage()));
                                  },
                                  label: "Kyc details",
                                  icon: Icons.verified_user_outlined,
                                )
                              : NefForwardButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => VerifyKyc()));
                                  },
                                  label: "verify kyc",
                                  icon: Icons.verified_user_outlined,
                                );
                        },
                        orElse: () => SizedBox()),
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
