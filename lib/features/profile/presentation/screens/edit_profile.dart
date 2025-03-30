import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/nef_custom/nef_padding.dart';
import 'package:nepstayapp/core/nef_custom/nef_text_form_field.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/features/profile/data/model/user_details.dart';
import 'package:nepstayapp/features/profile/presentation/notifier/profile_notifier.dart';

class EditProfile extends ConsumerStatefulWidget {
  const EditProfile({super.key});

  @override
  ConsumerState<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends ConsumerState<EditProfile> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileProvider);
    final profileNotifier = ref.watch(profileProvider.notifier);

    return Scaffold(
      appBar: RidAppBar(
          onBackButtonPressed: () {
            profileNotifier.resetAll();
            Navigator.pop(context);
          },
          showBackButton: true,
          showBackText: true,
          title: "Edit Profile"),
      body: SingleChildScrollView(
        child: NefPadding(
          child: profileState.maybeMap(
            error: (value) => const SizedBox(),
            initial: (value) => const SizedBox(),
            loading: (value) => const CircularProgressIndicator(),
            loaded: (value) {
              final user = value.user;
              firstNameController.text = (firstNameController.text.isNotEmpty
                      ? firstNameController.text
                      : user!.firstName) ??
                  "";
              lastNameController.text = (lastNameController.text.isNotEmpty
                      ? lastNameController.text
                      : user?.lastName) ??
                  "";
              contactController.text = (contactController.text.isNotEmpty
                      ? contactController.text
                      : user?.contactNumber) ??
                  "";
              genderController.text = (genderController.text.isNotEmpty
                      ? genderController.text
                      : user?.gender) ??
                  "";
              emailController.text = (emailController.text.isNotEmpty
                      ? emailController.text
                      : user?.email) ??
                  "";
              districtController.text = (districtController.text.isNotEmpty
                      ? districtController.text
                      : user?.district) ??
                  "";
              streetController.text = (streetController.text.isNotEmpty
                      ? streetController.text
                      : user?.street) ??
                  "";
              cityController.text = (cityController.text.isNotEmpty
                      ? cityController.text
                      : user?.city) ??
                  "";

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () async {
                      await profileNotifier.pickImage();
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: (user!.images.isEmpty &&
                                user.images.isEmpty)
                            ? const AssetImage("assets/images/IMG_4610.jpg")
                                as ImageProvider
                            : (profileState.file == null)
                                ? NetworkImage(user.images.first.imageUrl ?? "")
                                : FileImage(File(profileState.file!.path))
                                    as ImageProvider,
                        radius: 50,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  user.images.isEmpty
                      ? InkWell(
                          onTap: () async {
                            await profileNotifier.pickImageForUpload();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color: primaryColor)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Upload Image",
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  const SizedBox(height: 20),
                  const Text("First name"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: firstNameController),
                  const Text("Last Name"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: lastNameController),
                  const Text("Email"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: emailController),
                  const Text("Contact Number"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: contactController),
                  const Text("Gender"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: genderController),
                  const Text("City"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: cityController),
                  const Text("Street"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: streetController),
                  const Text("District"),
                  const SizedBox(height: 5),
                  NefTextFormField(controller: districtController),
                  NefElevatedButton(
                      text: "Update Profile",
                      onPressed: () {
                        UserDetails userDetails = UserDetails(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            gender: genderController.text,
                            city: cityController.text,
                            district: districtController.text,
                            images: [
                              ImageModel(
                                  imageUrl: profileState.imageUrl,
                                  publicId: user.images.first.publicId,
                                  id: user.images.first.id,
                                  imageType: user.images.first.imageType)
                            ],
                            street: streetController.text);
                        profileNotifier.updateUserDetails(userDetails);
                      })
                ],
              );
            },
            orElse: () {
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
