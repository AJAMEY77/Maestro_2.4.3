import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _otpController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _showOtpField = false;

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
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Enter your registered email',
                fillColor: Colors.greenAccent.withOpacity(0.2),
                filled: true,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Check for valid email before sending OTP
                if (isValidEmail(_emailController.text)) {
                  // Add logic here to send OTP to the entered email
                  // For demonstration purposes, let's just toggle the visibility of the OTP field
                  setState(() {
                    _showOtpField = true;
                  });
                } else {
                  // Show error message for invalid email
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please enter a valid email.'),
                    ),
                  );
                }
              },
              child: Text('Send OTP'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
              ),
            ),
            if (_showOtpField) ...[
              SizedBox(height: 16),
              TextField(
                controller: _otpController,
                decoration: InputDecoration(
                  labelText: 'Enter OTP',
                  fillColor: Colors.greenAccent.withOpacity(0.2),
                  filled: true,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your new password',
                  fillColor: Colors.greenAccent.withOpacity(0.2),
                  filled: true,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm your new password',
                  fillColor: Colors.greenAccent.withOpacity(0.2),
                  filled: true,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Validate new password and confirm password before processing
                  if (_newPasswordController.text !=
                      _confirmPasswordController.text) {
                    // Show error message if passwords do not match
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Passwords do not match.'),
                      ),
                    );
                  } else if (!isValidPassword(_newPasswordController.text)) {
                    // Show error message for invalid password
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('Password should be at least 8 characters.'),
                      ),
                    );
                  } else {
                    // Add logic here to handle successful password reset
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Password reset successful!'),
                      ),
                    );
                  }
                },
                child: Text('Submit OTP'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ForgotPassword(),
    ),
  );
}
