import 'package:flutter/material.dart';
import 'package:my_project_2/app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/pinkflowers.jpg'), 
        fit: BoxFit.cover)
      ),
      child:Column(children: [
        Center(
        child: SizedBox(
          width: 370,
          height:50)),
        Center(
        child: SizedBox(
          width: 370,
          height:100,
          child: TextField(
          
          decoration: InputDecoration(
            label: Icon(Icons.person),
            hintText: 'Name',
            border: OutlineInputBorder(borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 212, 212), width: 10
          ),
          ),
          ),
        ),
      ),
     ),
     Center(
        child: SizedBox(
          width: 370,
          height:100,
          child: TextField(
          
          decoration: InputDecoration(
            label: Icon(Icons.password),
            hintText: 'Password',
            border: OutlineInputBorder(borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 212, 212), width: 10
          ),
          ),
          ),
        ),
      ),
     ),
     Center(
        child: SizedBox(
          width: 370,
          height:100,
          child: TextField(
          
          decoration: InputDecoration(
            label: Icon(Icons.mail),
            hintText: 'Email',
            border: OutlineInputBorder(borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 212, 212), width: 10
          ),
          ),
          ),
        ),
      ),
     ),
     Center(
        child: SizedBox(
          width: 370,
          height:100,
          child: TextField(
          
          decoration: InputDecoration(
            label: Icon(Icons.chat),
            hintText: 'Message',
            border: OutlineInputBorder(borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 212, 212), width: 10
          ),
          ),
          ),
        ),
      ),
     ),
    FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyApp()));
      })
     ],
     )
     
     
    ),
    appBar: AppBar(backgroundColor: Colors.white,),
    );
  }
}