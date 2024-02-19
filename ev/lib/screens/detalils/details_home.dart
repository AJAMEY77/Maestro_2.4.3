import 'package:ev/screens/detalils/details_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyWidget extends StatelessWidget {
  // const MyWidget({super.key});

  final List _stations = ['station1', 'station2', 'station3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _stations.length,
          itemBuilder: (context, index) {
            return const StationPage();
          }),
    );
  }
}
