import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Import the file where HomePage is defined

class DisclosureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Permissions'),
        backgroundColor: Colors.blue, // Set AppBar color to blue
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Disclosure of App Permissions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'To provide you with the best possible experience and ensure that our app functions properly, we require access to certain features and data on your device. Below is an explanation of why each permission is necessary:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              '1. Location Access:\n   - To offer location-based services such as finding nearby hospitals or healthcare providers, and to provide relevant information based on your current location. This helps us ensure that the information and services we offer are tailored to your geographical area.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. Camera Access:\n   - To enable features such as scanning medical documents, QR codes, or capturing photos for health records. This functionality is designed to streamline your interactions with the app and make managing your health information easier.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. Microphone Access:\n   - To support features like voice commands or voice input for easier navigation and interaction with the app. This can enhance accessibility and provide a hands-free experience, allowing you to use the app more conveniently.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'How We Use Your Data\nYour privacy is important to us. The data collected through these permissions is used solely for the purposes stated above and is protected by our privacy policy. We do not share or sell your personal information to third parties.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Your Consent\nBy granting these permissions, you help us deliver a more personalized and efficient experience. You can review and manage your permissions at any time through your device settings.\n\nIf you have any concerns or questions about the permissions we request, please feel free to contact our support team.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => LoginScreen()), // Navigate to HomePage
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Rectangular shape
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0), // Increase padding for larger button
                ),
                child: Text(
                  'I Agree',
                  style: TextStyle(fontSize: 20, color: Colors.white), // Increase font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
