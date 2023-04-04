// welcome_page.dart
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'registration_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to LifeStory'),
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
            // You can add an app logo here, e.g. an AssetImage in a CircleAvatar or Container
            // CircleAvatar(
            //   backgroundImage: AssetImage('path/to/your/logo.png'),
            //   radius: 50,
            // ),

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
