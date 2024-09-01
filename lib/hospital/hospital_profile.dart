import 'package:flutter/material.dart';

class HospitalProfile extends StatelessWidget {
  final String name;
  final String address;
  final String contact1;
  final String contact2;
  final String timings;
  final String ownerName;
  final String additionalDetails;

  // Constructor to receive data from the home page
  HospitalProfile({
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
        title: Text('Hospital Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('Hospital Name: $name', style: TextStyle(fontSize: 18)),
            Text('Address: $address', style: TextStyle(fontSize: 18)),
            Text('Contact 1: $contact1', style: TextStyle(fontSize: 18)),
            Text('Contact 2: $contact2', style: TextStyle(fontSize: 18)),
            Text('Timings: $timings', style: TextStyle(fontSize: 18)),
            Text('Owner Name: $ownerName', style: TextStyle(fontSize: 18)),
            Text('Additional Details: $additionalDetails', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
