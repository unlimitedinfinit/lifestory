import 'package:flutter/material.dart';
import 'auth.dart';
import 'home_page.dart';
import 'registration_page.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Define the TextEditingController objects for email and password
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // Instantiate the AuthService_Pass class
  AuthService_Pass _authService = AuthService_Pass();

  // Define a GlobalKey for the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Form(
            key: _formKey,
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
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter an email address';
                    }
                    return null;
                  },
                ),

                // Spacer between email and password TextField
                SizedBox(height: 20),

                // Password TextField
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),

                // Spacer between password TextField and login button
                SizedBox(height: 30),

                // Login button
                ElevatedButton(
                  onPressed: () async {
                    // Validate the form
                    if (_formKey.currentState!.validate()) {
                      // Call the signInWithEmailAndPassword method of the AuthService_Pass class
                      dynamic result = await _authService.signInWithEmailAndPassword(
                          _emailController.text.trim(), _passwordController.text.trim());

                      if (result == null) {
                        print('Invalid email or password');
                      } else {
                        // Navigate to the home page
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                      }
                    }
                  },
                  child: Text('Login'),
                ),

                // Spacer between login button and register link
                SizedBox(height: 15),

                // Navigate to registration page
                TextButton(
                  onPressed: () {
                    // Navigate to the registration page
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                  },
                  child: Text('Don\'t have an account? Register now'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
