import 'package:flutter/material.dart';
import 'package:flutter_application_1/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/sales.dart';

class SalesHomePage extends StatelessWidget {
  Future<void> _signOut(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Clear all stored data

    // Pop the current screen and go back to the previous screen (sign-up screen)
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Logged In Screen!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _signOut(context),
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
