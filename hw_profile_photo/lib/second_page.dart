import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key,
   required this.userNumber, 
   required this.userEmail });
   final String userNumber;
   final String userEmail;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color.fromARGB(255, 255, 0, 157),
      appBar: AppBar(title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
  width: 120,
  height: 120,
  clipBehavior: Clip.antiAlias,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white
  ),
  child: Image.asset('assets/image/somporn.jpg', fit: BoxFit.cover,), 
),
SizedBox(height: 15,),
Text('Aliya', 
style: TextStyle(
  color: Colors.white,
  fontSize: 40,
    fontFamily: 'Yellowtail-Regular'
  ),),
Text(userNumber, style: TextStyle(color: Colors.white,
              fontSize: 50, fontWeight: FontWeight.bold
            ), ),
            Text(userEmail, style: TextStyle(fontSize: 20),),
            
          ],
        ),
      ),
    );
  }
}