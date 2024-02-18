import 'package:flutter/material.dart';
import './stations/stationmodel.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSelected = false;
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
              onChanged: (value) => updateList(value),
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
                  color: Colors.green[200],
                  child: FilterChip(
                    label: Text(" nearest "),
                    selected: isSelected,
                    onSelected: (bool value) {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  //
                  height: 70,
                  width: 100,
                  color: Colors.green[200],
                  child: FilterChip(
                    label: Text("cheapest"),
                    selected: isSelected,
                    onSelected: (bool value) {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 100,
                  color: Colors.green[200],
                  child: FilterChip(
                    label: Text("fast charging"),
                    selected: isSelected,
                    onSelected: (bool value) {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                  ),
                ),
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
                        ))))
          ],
        ),
      ),
    );
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
