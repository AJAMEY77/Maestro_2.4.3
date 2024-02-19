import 'dart:async';

import 'package:ev/screens/search/searchpage.dart';
import 'package:ev/screens/status/status.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_tomtom/flutter_map_tomtom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(18.651759, 73.761452),
    zoom: 14,
  );

  double _mapPanSensitivity = 1.0; // Sensitivity factor for map panning

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: NavDrawer(),
      backgroundColor: Colors.green[700],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[700], // Set the background color to green
        selectedItemColor: Colors.white, // Set the selected item color
        unselectedItemColor:
            Colors.white.withOpacity(0.5), // Set the unselected item color
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_outlined), label: "Status"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              // Handle Home item tap
              // Example: navigate to Home page
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 1:
              // Handle Search item tap
              // Example: navigate to Search page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
              break;
            case 2:
              // Handle Notifications item tap
              // Example: navigate to Notifications page
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StatusPage()));
              break;
          }
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: TextField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                hintText: 'Search here ...',
                                hintStyle: TextStyle(color: Colors.white),
                                border: InputBorder.none,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchPage()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                height: screenHeight * 0.7,
                child: Image.asset(
                  'assets/map.png', // Replace 'your_image.png' with the path to your image asset
                  fit: BoxFit
                      .cover, // Adjust the fit of the image to cover the container
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // Add more list tiles as needed
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
