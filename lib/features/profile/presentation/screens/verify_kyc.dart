import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/nef_custom/nef_elevated_button.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/features/profile/data/model/kyc/kyc_model.dart';
import 'package:nepstayapp/features/profile/presentation/notifier/profile_notifier.dart';

class VerifyKyc extends ConsumerStatefulWidget {
  const VerifyKyc({super.key});

  @override
  ConsumerState<VerifyKyc> createState() => _VerifyKycState();
}

class _VerifyKycState extends ConsumerState<VerifyKyc> {
  final TextEditingController _vehicleTypeController = TextEditingController();
  final TextEditingController _vehicleNumberController =
      TextEditingController();
  final TextEditingController _citizenNumberController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final profileState = ref.watch(profileProvider);
    final profileNotifier = ref.watch(profileProvider.notifier);
    return Scaffold(
      appBar: NefAppBar(
        title: "Verify KYC",
        backgroundColor: primaryColor,
        onBackButtonPressed: () {
          profileNotifier.resetAll();
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vehicle Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _vehicleTypeController,
              decoration: InputDecoration(
                labelText: "Vehicle Type",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.directions_car),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _vehicleNumberController,
              decoration: InputDecoration(
                labelText: "Vehicle Number",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Legal Information",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _citizenNumberController,
              decoration: InputDecoration(
                labelText: "Citizenship Number",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.medical_information_outlined),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Upload Documents",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImagePicker("License Image", profileState.licenseImage,
                    () => profileNotifier.pickKycImage('license')),
                _buildImagePicker("Vehicle Image", profileState.vechileImage,
                    () => profileNotifier.pickKycImage('vechile')),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImagePicker(
                    "FCitizenship Image",
                    profileState.citizenshipFront,
                    () => profileNotifier.pickKycImage('citizenshipF')),
                _buildImagePicker(
                    "BCitizenship Image",
                    profileState.citizenshipBack,
                    () => profileNotifier.pickKycImage('citizenshipB')),
              ],
            ),
            const SizedBox(height: 32),
            NefElevatedButton(
              text: "Submit",
              onPressed: () async {
                PostKYCModel postKYCModel = PostKYCModel(
                    vechileType: _vehicleTypeController.text,
                    vechileNumber: _vehicleNumberController.text,
                    citizenShipNumber: _citizenNumberController.text,
                    images: profileState.imagesKyc);
                await profileNotifier.submitKycVefification(postKYCModel);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePicker(String label, XFile? image, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: image == null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                  const SizedBox(height: 8),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                    maxLines: 2,
                  ),
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(
                  File(image.path),
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
