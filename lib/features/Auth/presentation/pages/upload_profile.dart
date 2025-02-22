import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/string_util.dart';
import 'package:nepstayapp/features/Auth/presentation/pages/profile_confirmation.dart';

class UploadProfile extends ConsumerStatefulWidget {
  const UploadProfile({super.key});

  @override
  ConsumerState<UploadProfile> createState() => _UploadProfileState();
}

class _UploadProfileState extends ConsumerState<UploadProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NefAppBar(title: "Profile"),
      body: NefPadding(
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
            Text("Upload Image"),
            SizedBox(height: 20),
            NefTextFormField(
              hintText: "Street",
            ),
            NefTextFormField(
              hintText: "City",
            ),
            NefTextFormField(
              hintText: "District",
            ),
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
