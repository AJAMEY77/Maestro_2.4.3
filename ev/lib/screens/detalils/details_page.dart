import 'package:ev/screens/bookingPage/bookPage.dart';
import 'package:ev/screens/ratingReview/ratingReview.dart';
import 'package:flutter/material.dart';

class StationPage extends StatelessWidget {
  // final String name;
  // final String distance;
  // final String rate;

  const StationPage({
    // required this.name,
    // required this.distance,
    // required this.rate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Charging Station"),
        backgroundColor: const Color.fromARGB(255, 14, 166, 75),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              'https://media.istockphoto.com/id/1221447606/photo/charging-station.jpg?s=612x612&w=0&k=20&c=5Z1MVyuZIFR3f0ca51a3n3ZvFUt7P1rAAU8dP_TtVBM=',
              fit: BoxFit.cover,
              height: 300,
              width: 450,
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
                MaterialPageRoute(builder: (context) => const BookingPage()),
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
