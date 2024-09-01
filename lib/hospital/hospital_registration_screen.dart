import 'package:flutter/material.dart';
import 'package:hp_app/Widget/style.dart'; // Ensure this path is correct
import 'package:hp_app/hospital/hospital_login_screen.dart'; // Adjust path if needed

class HospitalRegistrationScreen extends StatelessWidget {
  final List<String> hospitalNames = [
    'City Hospital',
    'Apollo Hospital',
    'Fortis Healthcare',
    'Global Hospitals',
    'Medanta Hospital',
    'Narayana Health',
    'Max Healthcare',
    'Manipal Hospitals',
  ]; // List of hospital names

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Registration', style: AppStyles.appBarTextStyle),
        backgroundColor: AppStyles.appBarBackgroundColor,
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
                  'assets/logo.png',
                  height: 120,
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'First Name',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Last Name',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 16),

                // Autocomplete for hospital name
                Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text.isEmpty) {
                      return const Iterable<String>.empty();
                    }
                    return hospitalNames.where((String hospitalName) {
                      return hospitalName
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  onSelected: (String selection) {
                    print('Selected: $selection'); // Handle selected value
                  },
                  fieldViewBuilder: (BuildContext context,
                      TextEditingController fieldTextEditingController,
                      FocusNode fieldFocusNode,
                      VoidCallback onFieldSubmitted) {
                    return TextField(
                      controller: fieldTextEditingController,
                      focusNode: fieldFocusNode,
                      decoration: AppStyles.textFieldDecoration.copyWith(
                        labelText: 'Hospital Name',
                      ),
                    );
                  },
                ),

                SizedBox(height: 16),

                // Hospital Address with more space
                TextField(
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Address',
                  ),
                  maxLines: 3, // Set the maxLines to 3 to allow more space
                ),

                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: AppStyles.textFieldDecoration.copyWith(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 16),

                // Register Button with bigger size, rectangular shape, and blue color
                ElevatedButton(
                  onPressed: () {
                    // After registration, navigate to the login page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalLoginScreen()),
                    );
                  },
                  style: AppStyles.elevatedButtonStyle, // Apply button style
                  child: Text(
                    'Register',
                    style: AppStyles.buttonTextStyle,
                  ),
                ),

                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalLoginScreen()),
                    );
                  },
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
