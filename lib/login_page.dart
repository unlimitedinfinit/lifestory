// login_page.dart
import 'package:flutter/material.dart';
// Import home page
// import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define the TextEditingController objects for email and password
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // App logo
              // CircleAvatar(
              //   backgroundImage: AssetImage('path/to/your/logo.png'),
              //   radius: 50,
              // ),

              // Spacer between app logo and form fields
              SizedBox(height: 30),

              // Email TextField
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              // Spacer between email and password TextField
              SizedBox(height: 20),

              // Password TextField
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),

              // Spacer between password TextField and login button
              SizedBox(height: 30),

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Perform login action
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Login'),
              ),

              // Spacer between login button and register link
              SizedBox(height: 15),

              // Navigate to registration page
              TextButton(
                onPressed: () {
                  // Navigate to the registration page
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                },
                child: Text('Don\'t have an account? Register now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
