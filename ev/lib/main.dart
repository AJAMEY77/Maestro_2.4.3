import 'package:ev/screens/homePage/homePage.dart';
<<<<<<< master
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/search/searchpage.dart';
//import 'package:ev/screens/ratingReview/ratingReview.dart';
//import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:flutter/material.dart';

//comments
=======
import 'package:ev/screens/loginPage/forgotpass.dart';
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/loginPage/register.dart';
import 'package:flutter/material.dart';

>>>>>>> master
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLogin(),
<<<<<<< master
=======
        'register': (context) => const MyRegister(),
        'forgotpass': (context) => const ForgotPassword(),
        'homePage': (context) => const HomePage(),
>>>>>>> master
      },
    ),
  );
}
