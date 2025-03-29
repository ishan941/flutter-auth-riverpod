import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
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
      body: userDetails.maybeMap(
        initial: (value) => const Center(child: Text("No Data")),
        loading: (value) => const Center(child: CircularProgressIndicator()),
        loaded: (value) {
          final user = value.user;
          return NefPadding(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: user!.images.isNotEmpty &&
                            user.images.first.imageUrl != null
                        ? NetworkImage(user.images.first.imageUrl!)
                        : const AssetImage("assets/images/IMG_4610.jpg")
                            as ImageProvider,
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
                    const SizedBox(width: 10),
                    user.verified
                        ? const Icon(
                            Icons.verified,
                            color: primaryColor,
                          )
                        : const SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                NefElevationBackButton(
                  isForm: false,
                  isProfile: true,
                  profileTitle: "Full Name:",
                  profileSubtitle: "${user.firstName} ${user.lastName}",
                  text: '',
                ),
                const SizedBox(
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
        error: (message) => Center(child: Text(message.message.toString())),
        orElse: () {
          return const SizedBox();
        },
      ),
    );
  }
}
