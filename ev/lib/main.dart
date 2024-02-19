import 'dart:js';

import 'package:ev/screens/homePage/homePage.dart';
import 'package:ev/screens/loginPage/forgotpass.dart';
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/loginPage/register.dart';
//import 'package:ev/screens/ratingReview/ratingReview.dart';
//import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:flutter/material.dart';

//comments
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLogin(),
        'register': (context) => const MyRegister(),
        'forgotpass': (context) => const ForgotPassword(),
        'homePage': (context) => const HomePage(),
        // 'ratingReview': (context) => RatingPage(
        //       reviews: [],
        //       onReviewSubmitted: (reviews) {
        //         print('Updated Reviews List: $reviews');
        //       },
        //     ),
        // 'reviewsList': (context) => ReviewPage(reviews: []),
      },
    ),
  );
}
