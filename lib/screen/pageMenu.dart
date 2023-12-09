import 'package:flutter/material.dart';

class pagemenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('assets/images/Group 10.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Selamat siang, Cute! Apa yang kamu butuhkan?'),
                    ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman Go Med for Animal
                      },
                      child: Text('Go Med for Animal'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman Pet Shop
                      },
                      child: Text('Pet Shop'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
