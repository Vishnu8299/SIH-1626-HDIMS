import 'package:flutter/material.dart';
import 'package:hp_app/hospital/hospital_department_home_page.dart'; // Import the hospital home page

class HospitalFormPage extends StatefulWidget {
  @override
  _HospitalFormPageState createState() => _HospitalFormPageState();
}

class _HospitalFormPageState extends State<HospitalFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Controllers to hold form input values
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController contact1Controller = TextEditingController();
  final TextEditingController contact2Controller = TextEditingController();
  final TextEditingController timingsController = TextEditingController();
  final TextEditingController ownerNameController = TextEditingController();
  final TextEditingController additionalDetailsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Form Page'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Hospital Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the hospital name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: contact1Controller,
                decoration: InputDecoration(labelText: 'Contact Number 1'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the first contact number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: contact2Controller,
                decoration: InputDecoration(labelText: 'Contact Number 2'),
              ),
              TextFormField(
                controller: timingsController,
                decoration: InputDecoration(labelText: 'Hospital Timings'),
              ),
              TextFormField(
                controller: ownerNameController,
                decoration: InputDecoration(labelText: 'Owner Name'),
              ),
              TextFormField(
                controller: additionalDetailsController,
                decoration: InputDecoration(labelText: 'Additional Details'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Navigate to the HospitalHomePage, passing form data
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HospitalHomePage(
                          name: nameController.text,
                          address: addressController.text,
                          contact1: contact1Controller.text,
                          contact2: contact2Controller.text,
                          timings: timingsController.text,
                          ownerName: ownerNameController.text,
                          additionalDetails: additionalDetailsController.text,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
