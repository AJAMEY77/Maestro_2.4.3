import 'package:ev/screens/loginPage/forgotpass.dart';
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/loginPage/register.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),
      'register': (context) => const MyRegister(),
      'forgotpass': (context) => const ForgotPassword()
    },
  ));
}
