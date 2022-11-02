// ignore_for_file: prefer_const_constructors

import 'package:biometric_authentication/fingerprint_auth.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,248,123,117),
        elevation: 0,
        centerTitle: true,
        title: Text('Welcome'),
        actions: [
          IconButton(
            onPressed:(){
              Navigator
                .of(context)
                .pushReplacement(MaterialPageRoute(builder: (BuildContext context) => FingerprintAuth()));
          }, 
          icon: Icon(Icons.logout),
          
          )
        ],
      ),
      body: Center(
        
        child: Text(
          'Hello User, Welcome to the app!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16
          ),
        ),
      ),
    );
  }
}