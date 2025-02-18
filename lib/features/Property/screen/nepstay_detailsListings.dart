import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class AirbnbListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Airbnb Listing")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCard(
              title: "Aircover",
              icon: LucideIcons.shieldCheck,
              content:
                  "Every booking includes free protection from Host cancellations, listing inaccuracies, and other issues like trouble checking in.",
            ),
            _buildCard(
              title: "Description",
              content:
                  "Enjoy a private and quiet bedroom and bathroom in Yonkers. Bus and train station are only minutes away. Train will take you to Manhattan in about 45 minutes. Cross County Mall and many restaurants are close by. Free parking. Fast WiFi.",
            ),
            _buildCard(
              title: "Where you’ll sleep",
              icon: LucideIcons.bed,
              content: "1 Queen bed",
            ),
            _buildCard(
              title: "What this place offers",
              content:
                  "- River view\n- Wifi\n- Free parking\n- AC - Split type ductless system",
            ),
            _buildCard(
              title: "Where you’ll be",
              icon: LucideIcons.mapPin,
              content:
                  "Yonkers, New York, United States\nLocated on a quiet suburban street.",
            ),
            _buildCard(
              title: "Reviews",
              icon: LucideIcons.star,
              content:
                  "5.0 · 3 reviews\nBlair: 'Great location! This private room in Yonkers near the bus and train station made my trip a breeze. Cozy, clean, and a welcoming host. Highly recommended!'",
            ),
            _buildCard(
              title: "Hosted by Craig",
              content:
                  "Joined in July 2014\n3 Reviews\nUS Air Force Reserves\nDirector of Distribution Operations at a NY hospital",
            ),
            _buildCard(
              title: "Availability",
              content: "Feb 13 - 14",
            ),
            _buildCard(
              title: "House rules",
              content: "Check-in: After 1:00 PM",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(
      {required String title, IconData? icon, required String content}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (icon != null) Icon(icon, color: Colors.blue),
                SizedBox(width: 8.0),
                Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(content,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[700])),
          ],
        ),
      ),
    );
  }
}
