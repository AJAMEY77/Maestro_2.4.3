import 'package:ev/screens/bookingPage/bookPage.dart';
import 'package:ev/screens/ratingReview/ratingReview.dart';
import 'package:flutter/material.dart';

class StationPage extends StatelessWidget {
  const StationPage({super.key, Key? key_});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Charging Station"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              'src',
              fit: BoxFit.cover,
              height: 400,
              width: 500,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Name: Pccoe electric station\nDistance: 20KM\nRate: 450 Rs/min\nAvg price: 350 Rs",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ), // Set custom font size here
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookingPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 21, 80, 23),
              ),
            ),
            child: const Text(
              'Book the Station',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RatingPage(
                          reviews: [],
                          onReviewSubmitted: (Review) {
                            var reviews;
                            print('Updated Rveviews List:  $reviews');
                          },
                        )),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 21, 80, 23),
              ),
            ),
            child: const Text(
              'Rating',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: StationPage(),
    ),
  );
}
