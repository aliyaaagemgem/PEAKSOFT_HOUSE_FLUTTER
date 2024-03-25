import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 Random random = Random();
  int FirstDice = 1;
  int SecondDice = 5;

void activing() {
  setState(() {
    FirstDice = Random().nextInt(6)+1;
   SecondDice = Random().nextInt(6)+1;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
      backgroundColor: Colors.white,
        title: Center(child: Text('Задание 5',
        )),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (FirstDice == 6) Text('SUCCESS!! :)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
             if (SecondDice == 6) Text('SUCCESS!! :)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10),
              child: Row(
                children: [
                  
                  Expanded(
                    child: Image.asset('assets/dice_$FirstDice.png')
                    ),
                    SizedBox(width: 8,),
                     Expanded(
                    child: Image.asset('assets/dice_$SecondDice.png')
                  ),
             
                ],
              ),
            ),
            SizedBox(height: 20,),
                 ElevatedButton.icon(
                    onPressed:(){
                      activing();
                    }, 
                    icon: Icon(Icons.touch_app), 
                    label: Text('Play'))
          ],
        ),
      ),
    );
  }
}