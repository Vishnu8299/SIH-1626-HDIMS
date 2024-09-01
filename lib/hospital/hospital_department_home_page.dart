import 'package:flutter/material.dart';
import 'hospital_profile.dart'; // Import the hospital profile page

class HospitalHomePage extends StatelessWidget {
  final String name;
  final String address;
  final String contact1;
  final String contact2;
  final String timings;
  final String ownerName;
  final String additionalDetails;

  // Constructor to receive data from the form
  HospitalHomePage({
    required this.name,
    required this.address,
    required this.contact1,
    required this.contact2,
    required this.timings,
    required this.ownerName,
    required this.additionalDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Home Page'),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Hospital Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Navigate to the HospitalProfilePage and pass the data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalProfile(
                      name: name,
                      address: address,
                      contact1: contact1,
                      contact2: contact2,
                      timings: timings,
                      ownerName: ownerName,
                      additionalDetails: additionalDetails,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
                // Add logout logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Hospital Home Page Content'),
      ),
    );
  }
}
