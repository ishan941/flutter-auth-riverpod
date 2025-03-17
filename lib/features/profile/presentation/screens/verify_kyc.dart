import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nepstayapp/core/nef_custom/nef_app_bar.dart';
import 'package:nepstayapp/core/utils/color_util.dart';

class VerifyKyc extends ConsumerStatefulWidget {
  const VerifyKyc({super.key});

  @override
  ConsumerState<VerifyKyc> createState() => _VerifyKycState();
}

class _VerifyKycState extends ConsumerState<VerifyKyc> {
  final TextEditingController _vehicleTypeController = TextEditingController();
  final TextEditingController _vehicleNumberController =
      TextEditingController();
  XFile? _licenseImage;
  XFile? _vehicleImage;

  Future<void> _pickImage(bool isLicense) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        if (isLicense) {
          _licenseImage = image;
        } else {
          _vehicleImage = image;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NefAppBar(
        title: "Verify KYC",
        backgroundColor: primaryColor,
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
              "Upload Documents",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildImagePicker(
                    "License Image", _licenseImage, () => _pickImage(true)),
                _buildImagePicker(
                    "Vehicle Image", _vehicleImage, () => _pickImage(false)),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () {},
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
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
                  Text(label,
                      style: const TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  image.path,
                  width: 140,
                  height: 140,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
