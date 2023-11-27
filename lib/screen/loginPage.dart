import 'package:flutter/material.dart';
import 'package:gopet/screen/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Implement login logic here
    // For simplicity, let's just print the entered username and password
    print('Username: ${_usernameController.text}');
    print('Password: ${_passwordController.text}');

    // Navigate to the home page after successful login
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()), // Ganti dengan nama halaman beranda yang benar
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/back.png'),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: 16.0,
            right: 16.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _login,
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}