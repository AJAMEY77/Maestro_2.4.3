import 'package:ev/screens/paymentPage/upi.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime _selectedStartTime = DateTime.now();
  DateTime _selectedEndTime = DateTime.now().add(const Duration(hours: 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Charging Station'),
        backgroundColor: const Color(0xFF71DA74), // Green color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Select Charging Time',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Start Time:',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectStartTime(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF71DA74), // Green color
                  ),
                  child: Text(
                    _formatTime(_selectedStartTime),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'End Time:',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                ElevatedButton(
                  onPressed: () {
                    _selectEndTime(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF71DA74), // Green color
                  ),
                  child: Text(
                    _formatTime(_selectedEndTime),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // _bookChargingStation();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PhonePePayment()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF71DA74), // Green color
              ),
              child: Text(
                'Book Charging Station - ${_calculatePrice()} Rs',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectStartTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedStartTime),
    );
    if (pickedTime != null) {
      setState(() {
        _selectedStartTime = DateTime(
          _selectedStartTime.year,
          _selectedStartTime.month,
          _selectedStartTime.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }

  void _selectEndTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedEndTime),
    );
    if (pickedTime != null) {
      setState(() {
        _selectedEndTime = DateTime(
          _selectedEndTime.year,
          _selectedEndTime.month,
          _selectedEndTime.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour}:${time.minute}';
  }

  String _calculatePrice() {
    Duration chargingDuration = _selectedEndTime.difference(_selectedStartTime);
    int totalMinutes = chargingDuration.inMinutes;
    int roundedHalfHours = ((totalMinutes / 30).round() * 30).toInt();
    int price = (roundedHalfHours / 60 * 10).toInt();
    return price.toString();
  }

  void _bookChargingStation() {
    // Implement your logic for booking the charging station
    // This is a placeholder, you can replace it with your actual implementation
    print(
        'Booking the charging station from ${_formatTime(_selectedStartTime)} to ${_formatTime(_selectedEndTime)}');
    print('Price: ${_calculatePrice()} Rs');
  }
}
