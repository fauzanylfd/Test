import 'package:flutter/material.dart';
import 'package:gopet/screen/myAccount.dart';
import 'package:gopet/screen/loginPage.dart';
import 'package:gopet/screen/settingPage.dart';
import 'package:gopet/screen/myFavoritePage.dart';


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
              Text(
              globalName,
              style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10),
              Text(
                globalEmail,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccountPage()),
                    );
                  },
                ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('My Favorites'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyFavoritePage()),
                    );
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
