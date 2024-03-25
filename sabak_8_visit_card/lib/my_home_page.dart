import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056c5c),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Задание 4'),
      ),
      body: Column(
        children: [
          Text('Peaksoft House')
        ],
      ),
    );
  }
}