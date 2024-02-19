import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DisplayPage"),
      ),
      body: Column(
        children: [Image.network('src'), const Text('description')],
      ),
    );

    throw UnimplementedError();
  }
}
