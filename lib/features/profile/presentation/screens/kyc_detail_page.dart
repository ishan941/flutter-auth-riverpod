import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KycDetailPage extends ConsumerStatefulWidget {
  const KycDetailPage({super.key});

  @override
  ConsumerState<KycDetailPage> createState() => _KycDetailPageState();
}

class _KycDetailPageState extends ConsumerState<KycDetailPage> {
  final Map<String, dynamic> kycData = {
    "kycId": "xASfSZd",
    "vehicleType": "Car",
    "vehicleNumber": "ABC123",
    "kycVerified": true,
    "status": "approved",
    "userModel": {
      "firstName": "Ishan",
      "lastName": "Shrestha",
      "email": "iahan.esan18@gmail.com",
      "contactNumber": "+9779813706443",
      "gender": "Male",
      "city": "Banepa",
      "street": "Nala",
      "district": "kavre",
      "roleName": "DRIVER"
    },
    "images": [
      {
        "imageUrl":
            "http://res.cloudinary.com/dywwinxhh/image/upload/v1741103386/x59sluqmd2pcvohq6y68.jpg",
        "imageType": "license"
      },
      {
        "imageUrl":
            "http://res.cloudinary.com/dywwinxhh/image/upload/v1741103388/cpsktdbokvmxbzqklrv4.jpg",
        "imageType": "vehicle"
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("KYC Detail")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow("KYC ID", kycData["kycId"]),
              _buildDetailRow("Vehicle Type", kycData["vehicleType"]),
              _buildDetailRow("Vehicle Number", kycData["vehicleNumber"]),
              _buildDetailRow(
                  "KYC Verified", kycData["kycVerified"] ? "Yes" : "No"),
              _buildDetailRow("Status", kycData["status"]),
              const SizedBox(height: 16),
              const Text("User Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              _buildDetailRow("Name",
                  "${kycData["userModel"]["firstName"]} ${kycData["userModel"]["lastName"]}"),
              _buildDetailRow("Email", kycData["userModel"]["email"]),
              _buildDetailRow("Contact", kycData["userModel"]["contactNumber"]),
              _buildDetailRow("Gender", kycData["userModel"]["gender"]),
              _buildDetailRow("City", kycData["userModel"]["city"]),
              _buildDetailRow("Street", kycData["userModel"]["street"]),
              _buildDetailRow("District", kycData["userModel"]["district"]),
              _buildDetailRow("Role", kycData["userModel"]["roleName"]),
              const SizedBox(height: 16),
              const Text("Images",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              _buildImageList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Text(value, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildImageList() {
    return Column(
      children: kycData["images"].map<Widget>((image) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(image["imageType"],
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image["imageUrl"],
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
