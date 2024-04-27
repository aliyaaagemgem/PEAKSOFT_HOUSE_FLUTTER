import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int secontCounter;

  const SecondPage({super.key, required this.secontCounter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$secontCounter',
            ),
          ],
        ),
      ),
    );
  }
}