import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bookings"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("This is the Bookings page."),
      ),
    );
  }
}
