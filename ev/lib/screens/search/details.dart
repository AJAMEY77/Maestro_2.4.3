import 'dart:async';

import 'package:ev/main.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DisplayPage"),
      ),
      body: Column(
        children: [Image.network('src'), Text('description')],
      ),
    );

    throw UnimplementedError();
  }
}
