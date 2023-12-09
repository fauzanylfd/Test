import 'package:flutter/material.dart';
import 'package:gopet/screen/homepage.dart';
import 'package:gopet/screen/pageMenu.dart';
import 'package:gopet/common/utils/custom_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add a global key for the form

  void _login() {
    // Validate the form fields
    if (_formKey.currentState!.validate()) {
      // Implement login logic here
      print('Username: ${_usernameController.text}');
      print('Password: ${_passwordController.text}');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pagemenu()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // Add this
        child: Stack(
          children: [
            Image.asset('assets/images/back.png'),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.45,
              left: 16.0,
              right: 16.0,
              child: Form(
                key: _formKey, // Add the form key here
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('Login'),
                     style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Coloors.primary,
    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
