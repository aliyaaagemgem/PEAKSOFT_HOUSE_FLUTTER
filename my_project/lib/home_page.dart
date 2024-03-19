import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/honeyy.jpg'), 
        fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, children: [
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Text("Honey is a sweet and viscous substance made by several bees, the best-known of which are honey bees.",
         style: TextStyle(color: Colors.white),
         //textAlign: TextAlign.center,
         ),
       ),

      ],),
    )
    );
  }
}