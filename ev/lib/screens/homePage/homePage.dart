import 'dart:async';
<<<<<<< master
=======

>>>>>>> master
import 'package:ev/screens/search/searchpage.dart';
import 'package:ev/screens/status/status.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
<<<<<<< master
=======
import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map_tomtom/flutter_map_tomtom.dart';
>>>>>>> master

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(18.651891445649838, 73.76143058771008),
    zoom: 14,
  );
<<<<<<< master
  final Completer<GoogleMapController> _controller = Completer();
=======

  double _mapPanSensitivity = 1.0; // Sensitivity factor for map panning
>>>>>>> master

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
<<<<<<< master
        title: const Text(
=======
        title: Text(
>>>>>>> master
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const NavDrawer(),
      backgroundColor: Colors.green[700],
      bottomNavigationBar: BottomNavigationBar(
<<<<<<< master
        backgroundColor: Colors.green[700],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
=======
        backgroundColor: Colors.green[700], // Set the background color to green
        selectedItemColor: Colors.white, // Set the selected item color
        unselectedItemColor:
            Colors.white.withOpacity(0.5), // Set the unselected item color
>>>>>>> master
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart_outlined), label: "Status"),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
<<<<<<< master
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StatusPage()),
              );
=======
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
>>>>>>> master
              break;
          }
        },
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 12),
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
<<<<<<< master
                                    builder: (context) => const SearchPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
=======
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
>>>>>>> master
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: screenHeight * 0.7,
                child: Image.asset(
<<<<<<< master
                  'assets/map.jpg',
                  fit: BoxFit.cover,
=======
                  'assets/map.png', // Replace 'your_image.png' with the path to your image asset
                  fit: BoxFit
                      .cover, // Adjust the fit of the image to cover the container
>>>>>>> master
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
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
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
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
