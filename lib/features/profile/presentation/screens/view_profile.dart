import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_typography.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/features/profile/presentation/notifier/profile_notifier.dart';

class ViewProfile extends ConsumerStatefulWidget {
  const ViewProfile({super.key});

  @override
  ConsumerState<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends ConsumerState<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    final userDetails = ref.read(profileProvider);
    return Scaffold(
      appBar: RidAppBar(title: "Profile"),
      body: userDetails.when(
        initial: () => const Center(child: Text("No Data")),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (user, isSuccess) {
          return NefPadding(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage:
                        user!.images.isNotEmpty && user.images.first.url != null
                            ? NetworkImage(
                                user.images.first.url!) // Load from network
                            : const AssetImage("assets/images/IMG_4610.jpg")
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
                    Text(user.roleName!),
                    SizedBox(width: 10),
                    user.verified == true
                        ? Icon(
                            Icons.verified,
                            color: primaryColor,
                          )
                        : SizedBox()
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Full Name:",
                  profileSubtitle: "${user.firstName} ${user.lastName}",
                  text: '',
                ),
                SizedBox(
                  height: 10,
                ),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Email:",
                  profileSubtitle: "${user.email} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Phone Number:",
                  profileSubtitle: "${user.contactNumber} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Gender:",
                  profileSubtitle: "${user.gender} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "city:",
                  profileSubtitle: "${user.city} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Street:",
                  profileSubtitle: "${user.street} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "District:",
                  profileSubtitle: "${user.district} ",
                  text: '',
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
        error: (message) => Center(child: Text(message)),
      ),
    ); // Your UI here
  }
}
