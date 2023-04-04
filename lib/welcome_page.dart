// welcome_page.dart
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 50),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // App name and logo
            Text(
              'LifeStory App',
              style: TextStyle(fontSize: 24),
            ),

            // Spacer between app name/logo and introduction text
            SizedBox(height: 30),

            // Placeholder for a brief introduction or app features
            Text(
              'LifeStory is a unique and engaging platform where you can create and share your personal stories, milestones, and experiences',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),

            // Spacer between introduction text and buttons
            SizedBox(height: 30),

            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),

            SizedBox(height: 10),

            ElevatedButton(
              child: Text('Register'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
