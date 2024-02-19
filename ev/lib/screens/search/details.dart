<<<<<<< master
import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

=======
import 'dart:async';

import 'package:ev/main.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
>>>>>>> master
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< master
        title: const Text("DisplayPage"),
      ),
      body: Column(
        children: [Image.network('src'), const Text('description')],
=======
        title: Text("DisplayPage"),
      ),
      body: Column(
        children: [Image.network('src'), Text('description')],
>>>>>>> master
      ),
    );

    throw UnimplementedError();
  }
}
