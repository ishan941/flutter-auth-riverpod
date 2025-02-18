import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Your mobile number',
                  border: OutlineInputBorder(),
                  prefixText: '+880 ',
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                items: ['Male', 'Female', 'Other']
                    .map((gender) => DropdownMenuItem(
                          value: gender,
                          child: Text(gender),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 10),
              Text(
                'By signing up, you agree to the Terms of Service and Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {}, // Add sign-up logic
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10),
              Text('or', textAlign: TextAlign.center),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {}, // Google sign-up logic
                child: Text('Sign up with Gmail'),
              ),
              ElevatedButton(
                onPressed: () {}, // Facebook sign-up logic
                child: Text('Sign up with Facebook'),
              ),
              ElevatedButton(
                onPressed: () {}, // Apple sign-up logic
                child: Text('Sign up with Apple'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {}, // Navigate to sign-in page
                child: Text('Already have an account? Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
