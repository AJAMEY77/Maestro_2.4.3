import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StationPage extends StatelessWidget {
  const StationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Charging Station"),
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
          Center(
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
              // Add your button onPressed logic here
              //Navigator.of(context).push(MaterialPageRoute(builder: context=>))
            },
            child: Text(
              'Book the Station',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 21, 80, 23),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add onPressed logic for this button
              //Navigator.of(context).push(MaterialPageRoute(builder: context=>))
            },
            child: Text(
              'Rating',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 21, 80, 23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: StationPage(),
    ),
  );
}
