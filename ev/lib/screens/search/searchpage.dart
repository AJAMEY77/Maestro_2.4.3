import 'dart:convert';

import 'dart:convert';

import 'package:ev/screens/detalils/details_page.dart';
import 'package:ev/screens/search/details.dart';
import 'package:flutter/material.dart';
import './stations/stationmodel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;
// import 'package:xml/xml.dart' as xml;

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSelected = false;
  bool isNearestSelected = false;
  bool isCheapestSelected = false;
  bool isFastChargingSelected = false;
  bool isRatingSelected = false;
  List<StationModel> chargingStations = [
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'GreenCharge',
        25,
        20),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'PowerUp',
        18,
        25),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoCharge',
        32,
        18),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'CleanCharge',
        40,
        22),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoFriendly',
        20,
        15),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'FastPower',
        15,
        30),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoStation',
        28,
        17),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'QuickCharge',
        22,
        28),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'PowerHub',
        35,
        21),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'SprintCharge',
        19,
        24),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'GreenPower',
        26,
        19),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoMax',
        30,
        16),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'PowerPro',
        17,
        26),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'FastEco',
        23,
        23),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'ChargeNGo',
        29,
        18),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'SpeedCharge',
        21,
        27),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoSpeed',
        27,
        20),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'PowerBoost',
        24,
        25),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'ChargeXpress',
        31,
        22),
    StationModel(
        "https://images.pexels.com/photos/8827011/pexels-photo-8827011.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        'EcoChargePro',
        16,
        28),
    // Add more charging stations as needed
  ];
  late List<StationModel> displayList;

  @override
  void initState() {
    super.initState();
    displayList = List.from(chargingStations);
  }

  // void updateList(String value) {
  //   // this function will filter the list
  //   setState(() {
  //     displayList = chargingStations
  //         .where((element) =>
  //             element.stationName.toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }

  void updateList(String value) {
    setState(() {
      displayList = chargingStations
          .where((element) =>
              element.stationName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 255, 8),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search E-Stations",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                updateList(value);
                fetchChargingStationData("m96ZCU3q8KxAA4DeTJwUyLzFgGkk2ri1");
              },
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(59, 96, 70, 0),
                  border: OutlineInputBorder(),
                  hintText: "E-Stations near me",
                  suffixIcon: Icon(Icons.search),
                  suffixIconColor: Colors.green),
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: FilterChip(
                      label: Text(" nearest "),
                      selected: isNearestSelected,
                      onSelected: (bool value) {
                        setState(() {
                          isNearestSelected = value;
                          if (value) {
                            displayList.sort((a, b) =>
                                a.stationDistance.compareTo(b.stationDistance));
                          } else {
                            displayList = List.from(chargingStations);
                          }
                        });
                      }),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  //
                  height: 70,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: FilterChip(
                      label: Text("cheapest"),
                      selected: isCheapestSelected,
                      onSelected: (bool value) {
                        setState(() {
                          isCheapestSelected = value;
                          if (value) {
                            displayList
                                .sort((a, b) => a.rates.compareTo(b.rates));
                          } else {
                            displayList = List.from(chargingStations);
                          }
                        });
                      }),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: FilterChip(
                      label: Text("fast charging"),
                      selected: isFastChargingSelected,
                      onSelected: (bool value) {
                        setState(() {
                          isFastChargingSelected = value;
                          if (value) {
                            displayList.sort((a, b) =>
                                a.stationDistance.compareTo(b.stationDistance));
                          } else {
                            displayList = List.from(chargingStations);
                          }
                        });
                      }),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: FilterChip(
                      label: Text("ratings"),
                      selected: isRatingSelected,
                      onSelected: (bool value) {
                        setState(() {
                          isRatingSelected = value;
                          if (value) {
                            displayList
                                .sort((a, b) => a.rates.compareTo(b.rates));
                          } else {
                            displayList = List.from(chargingStations);
                          }
                        });
                      }),
                ),
                // SizedBox(
                //   width: 20,
                // ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: ((context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(8.0),
                          title: Text(
                            displayList[index].stationName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            ' distance: ${displayList[index].stationDistance} km',
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          trailing: Text(
                            'rate: ${displayList[index].rates} rs',
                            style: TextStyle(
                                color: _getColor(displayList[index].rates),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          leading: Image.network(displayList[index].imageUrl),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StationPage()),
                            );
                          },
                        ))))
          ],
        ),
      ),
    );
  }
}

Future<Map<String, dynamic>> fetchChargingStationData(String apiKey) async {
  final String baseURL = 'api.tomtom.com';
  final String versionNumber = '2';
  final String ext = 'json';
  final String chargingAvailabilityId = '00112233-4455-6677-8899-aabbccddeeff';
  final String connectorSet = 'IEC62196Type2CableAttached';
  final String minPowerKW = '22.2';
  final String maxPowerKW = '43.2';

  // Constructing the URL for the API request
  final url = Uri.https(
    baseURL,
    '/search/$versionNumber/chargingAvailability.$ext',
    {
      'key': apiKey,
      'chargingAvailability': chargingAvailabilityId,
      'connectorSet': connectorSet,
      'minPowerKW': minPowerKW,
      'maxPowerKW': maxPowerKW,
    },
  );

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData;
    } else {
      throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Exception occurred: $error');
  }
}

Color _getColor(int? rate) {
  if (rate != null) {
    if (rate <= 19) {
      return Colors.green;
    } else if (rate >= 20 && rate <= 25) {
      return Colors.orange;
    } else if (rate > 25) {
      return Colors.red;
    }
  }
  // Default color if rate is null or does not match any condition
  return Colors.black;
}
