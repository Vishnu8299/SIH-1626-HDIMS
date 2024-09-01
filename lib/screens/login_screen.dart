import 'package:flutter/material.dart';
import 'package:hp_app/Widget/style.dart'; // Ensure this path is correct
import 'register_screen.dart';
import 'package:hp_app/hospital/hospital_login_screen.dart'; // Updated path
import 'package:hp_app/admin/admin_login_screen.dart'; // Import the admin login screen
import 'package:hp_app/screens/user_home_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zenith Madic Login', style: AppStyles.appBarTextStyle),
        backgroundColor: AppStyles.appBarBackgroundColor,
        actions: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(width: 16), // Space before icons
              // Admin Icon
              IconButton(
                icon: Icon(Icons.local_hospital),
                iconSize: 30, // Increase icon size
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HospitalLoginScreen()),
                  );
                },
              ),
              SizedBox(width: 16),
              // Hospital Icon
              IconButton(
                icon: Icon(Icons.admin_panel_settings),
                iconSize: 30, // Increase icon size
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminLoginScreen()),
                  );
                },
              ),
              SizedBox(width: 16), // Space after icons
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // App Logo at the top
                Image.asset(
                  'assets/logo.png', // Replace with your app logo asset
                  height: 120, // Adjust the height of the logo
                ),
                SizedBox(height: 32), // Space between logo and form fields
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle login action
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => UserHomePage()),
                    );
                  },
                  style: AppStyles.elevatedButtonStyle, // Apply button style
                  child: Text('Login', style: AppStyles.buttonTextStyle),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  style: AppStyles.textButtonStyle,
                  child: Text('Don\'t have an account? Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
