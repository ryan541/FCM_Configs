import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NCBA Now'),
      ),
      body: Center(
          child: const Text(
        'HomeScreen',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
