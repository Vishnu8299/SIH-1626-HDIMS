import 'package:flutter/material.dart';

class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
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
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                // Navigate to Dashboard
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()), // Add your DashboardPage widget here
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Settings
                Navigator.pop(context);
                // Add your navigation or action here
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle Logout
                Navigator.pop(context);
                // Add logout logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Dashboard
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()), // Add your DashboardPage widget here
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                backgroundColor: Colors.blue, // Button background color
              ),
              child: Text(
                'Go to Dashboard',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your logout logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50), // Custom button size
                backgroundColor: Colors.red, // Button background color
              ),
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('This is the Dashboard'),
      ),
    );
  }
}
