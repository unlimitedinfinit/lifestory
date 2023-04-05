import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'home_page.dart';
import 'auth.dart';




class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Define the TextEditingController objects for name, email, and password
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // Instantiate the AuthService class
  AuthService _authService = AuthService();

  // Define a GlobalKey for the form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
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

                // Name TextField
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),

                // Spacer between name and email TextField
                SizedBox(height: 20),

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

                // Spacer between password TextField and register button
                SizedBox(height: 30),

                // Register button
                ElevatedButton(
                  onPressed: () async {
                    // Validate the form
                    if (_formKey.currentState!.validate()) {
                      // Call the createUserWithEmailAndPassword method of the AuthService class
                      dynamic result = await _authService.createUserWithEmailAndPassword(
                          _emailController.text.trim(), _passwordController.text.trim());

                      if (result == null) {
                        print('Error registering user');
                      } else {
                        // Navigate to the home page
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                      }
                    }
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
