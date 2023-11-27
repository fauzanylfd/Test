import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/pet_profile.jpg'),
              ),
              SizedBox(height: 20),
              const Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              const Text(
                'john.doe@email.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('My Account'),
                onTap: () {
                  // Implement action when 'My Account' is tapped
                },
              ),
              ListTile(
                leading: Icon(Icons.pets),
                title: Text('My Pets'),
                onTap: () {
                  // Implement action when 'My Pets' is tapped
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('My Favorites'),
                onTap: () {
                  // Implement action when 'My Favorites' is tapped
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Implement action when 'Settings' is tapped
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  // Implement action when 'Logout' is tapped
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
