import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const screenID = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: Image.network('').image,
              radius: 100,
            ),
            const Text('Name'),
            const Text('Email')
          ],
        ),
      ),
    );
  }
}
