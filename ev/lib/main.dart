
import 'package:ev/screens/loginPage/forgotpass.dart';
import 'package:ev/screens/loginPage/login.dart';
import 'package:ev/screens/loginPage/register.dart';
<<<<<<< HEAD


import 'package:ev/screens/search/searchpage.dart';

import 'package:flutter/material.dart';
import 'package:ev/screens/homePage/homePage.dart';

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            // This is the theme of your application.

            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a purple toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).

            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            // Naruto Uzumaki Dattebayo
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 55, 144, 59))),
        home: HomePage() //const
        );
  }

=======
//import 'package:ev/screens/ratingReview/ratingReview.dart';
//import 'package:ev/screens/ratingReview/reviewsList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => const MyLogin(),
        'register': (context) => const MyRegister(),
        'forgotpass': (context) => const ForgotPassword(),
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
>>>>>>> 40628f04dd875ee1605e5f98a17618129c0d64fe
}
