import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool isValidEmail(String email) {
    // Basic email format validation
    RegExp emailRegExp =
        RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
    return emailRegExp.hasMatch(email);
  }

  bool isValidPassword(String password) {
    // Validate password format (at least 8 characters)
    return password.length > 8;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Create Account',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Register.jpeg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    onChanged: (value) {
                      // Handle name input
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.greenAccent.withOpacity(0.2),
                      filled: true,
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    onChanged: (value) {
                      // Handle email input
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.greenAccent.withOpacity(0.2),
                      filled: true,
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    onChanged: (value) {
                      // Handle password input
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.greenAccent.withOpacity(0.2),
                      filled: true,
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _confirmPasswordController,
                    onChanged: (value) {
                      // Handle confirm password input
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.greenAccent.withOpacity(0.2),
                      filled: true,
                      hintText: 'Confirm your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // Validate email and password before processing registration
                      if (!isValidEmail(_emailController.text)) {
                        _showErrorDialog('Please enter a valid email.');
                      } else if (!isValidPassword(_passwordController.text)) {
                        _showErrorDialog(
                            'Password should be at least 8 characters.');
                      } else if (_passwordController.text !=
                          _confirmPasswordController.text) {
                        _showErrorDialog('Passwords do not match.');
                      } else {
                        // Process registration
                        _performRegistration();
                        Navigator.pushNamed(context, 'login');
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _performRegistration() {
    // Add your registration logic here
    // Once registration is successful, navigate to the next screen or perform desired action
  }
}
