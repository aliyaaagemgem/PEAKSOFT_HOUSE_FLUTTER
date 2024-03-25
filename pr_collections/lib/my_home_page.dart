import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String names = 'Алиса';
    String names1 = 'Элес';
    String names2 = 'Алина';
    String names3 = 'Умут';
     String names4 = 'КАМОЛЯ';
    return Scaffold(
      appBar: AppBar(title: const Text("Collections"), backgroundColor: Color.fromARGB(255, 255, 168, 249),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(names, style: TextStyle(fontSize: 30),),
            Text(names1, style: TextStyle(fontSize: 30),),
            Text(names2 , style: TextStyle(fontSize: 30),),
            Text(names3, style: TextStyle(fontSize: 30),),
              Text(names4, style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}