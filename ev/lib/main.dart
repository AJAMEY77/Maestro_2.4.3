import 'package:ev/screens/homePage/homePage.dart';
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/search/searchpage.dart';
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
      },
    ),
  );
}
