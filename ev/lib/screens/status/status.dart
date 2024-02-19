import 'dart:async';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  double chargingPercentage = 70.0; // Replace with actual charging percentage
  Duration remainingTime =
      const Duration(minutes: 30); // Replace with actual remaining time

  @override
  void initState() {
    super.initState();
    // Replace this with actual charging timer logic
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingTime.inSeconds > 0) {
          remainingTime -= const Duration(seconds: 1);
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charging Status'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.battery_full, // Replace with your battery icon
              size: 100,
              color: determineBatteryColor(chargingPercentage),
            ),
            const SizedBox(height: 20),
            Text(
              'Charging Percentage: ${chargingPercentage.toStringAsFixed(2)}%',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Time Remaining: ${remainingTime.inMinutes}:${(remainingTime.inSeconds % 60).toString().padLeft(2, '0')}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color determineBatteryColor(double percentage) {
    if (percentage < 20) {
      return Colors.red;
    } else if (percentage <= 50) {
      return Colors.orange;
    } else {
      return Colors.green;
    }
  }
}
