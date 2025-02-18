import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your OTP code',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter OTP',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {}, // Add verification logic
              child: Text('Verify'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {}, // Add resend logic
              child: Text('Didn’t receive code? Resend again'),
            ),
          ],
        ),
      ),
    );
  }
}
