import 'package:ev/screens/bookingPage/bookPage.dart';
import 'package:ev/screens/detalils/details_page.dart';
import 'package:ev/screens/homePage/homePage.dart';
import 'package:ev/screens/paymentPage/upi.dart';
import 'package:ev/screens/ratingReview/ratingReview.dart';
import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:ev/screens/search/searchpage.dart';
//import 'package:ev/screens/ratingReview/ratingReview.dart';
//import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:flutter/material.dart';

//comments
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'bookPage',
      routes: {
        //'login': (context) => const MyLogin(),
        // 'register': (context) => const MyRegister(),
        // 'forgotpass': (context) => const ForgotPassword(),
        // 'ratingReview': (context) => RatingPage(
        //       reviews: [],
        //       onReviewSubmitted: (reviews) {
        //         print('Updated Reviews List: $reviews');
        //       },
        //     ),
        // 'reviewsList': (context) => ReviewPage(reviews: []),
        'bookPage': (context) => const BookingPage(),
        'upi': (context) => const PhonePePayment(),
        // 'homePage': (context) => const HomePage(),
        // 'details_page': (context) => const StationPage(),
        //'searchpage': (context) => const SearchPage(),
      },
    ),
  );
}
