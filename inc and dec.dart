import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int increment = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
     appBar: AppBar(backgroundColor: Colors.amber[100],title: const Text("Counter App",
     style: TextStyle(color: Colors.orange, fontSize: 50.4),),),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
        Container(
          decoration: BoxDecoration(
            color:Colors.red,
            borderRadius: BorderRadius.circular(10)
          ),
        
        height: 50, 
        width: 100, 
        child: Center(child: Text( increment.toString(), style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),)),
        ),
        SizedBox(height: 20,),
        Center(
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(onPressed: (){
                setState((){
            increment++;
          });
              }, 
              icon: const Icon(Icons.add), 
              label: const Text('Increment') ),
          ElevatedButton.icon(onPressed: (){
                setState((){
            increment--;
          });
              }, 
              icon: const Icon(Icons.remove), 
              label: const Text('Decrement') ),
          ],),
        )
       ],),
     ),
    );
  }
}
