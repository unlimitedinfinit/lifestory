// profile_page.dart
import 'package:flutter/material.dart';



class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Define your user profile variables and their default values
  String _userName = 'John Doe';
  String _userEmail = 'john.doe@example.com';
  String _profileImageUrl = 'https://example.com/profile_image.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Implement functionality to edit profile details
            },
            tooltip: 'Edit Profile',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Display the profile image
              CircleAvatar(
                backgroundImage: NetworkImage(_profileImageUrl),
                radius: 60,
              ),

              // Spacer between profile image and user name
              SizedBox(height: 30),

              // Display the user name
              Text(
                _userName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              // Spacer between user name and user email
              SizedBox(height: 10),

              // Display the user email
              Text(
                _userEmail,
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),

              // Add other profile information and settings options here
              // ...
            ],
          ),
        ),
      ),
    );
  }
}
