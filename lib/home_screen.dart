import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NCBA Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                GoogleSignIn().signIn();
              },
              label: const Text('Google Sign In'),
              backgroundColor: Colors.orangeAccent,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'HomeScreen',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
