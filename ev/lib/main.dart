import 'package:ev/screens/paymentPage/upi.dart';
//import 'package:ev/screens/ratingReview/ratingReview.dart';
//import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:flutter/material.dart';

//comments
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'upi',
      routes: {
        // 'login': (context) => const MyLogin(),
        // 'register': (context) => const MyRegister(),
        // 'forgotpass': (context) => const ForgotPassword(),
        // 'ratingReview': (context) => RatingPage(
        //       reviews: [],
        //       onReviewSubmitted: (reviews) {
        //         print('Updated Reviews List: $reviews');
        //       },
        //     ),
        // 'reviewsList': (context) => ReviewPage(reviews: []),
        ////  'bookPage': (context) => const BookingPage(),
        'upi': (context) => const PhonePePayment(),
      },
    ),
  );
}
