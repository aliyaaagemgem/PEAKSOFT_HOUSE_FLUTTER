import 'package:flutter/material.dart';
import 'package:hw_profile_photo/second_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String phonenumber = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 81, 22),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(
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
 
  Text('Flutter Developer', 
style: TextStyle(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.bold,
  ),),
         TextFormField(
           onChanged: (MyNumber) {
             phonenumber = MyNumber;
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              label: Icon(Icons.phone),
              hintText: 'Your Phone Number'
              
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormField(
             onChanged: (MyEmail) {
              email = MyEmail;
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(),
              label: Icon(Icons.mail),
              hintText: 'Your Email'
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){
              if (phonenumber.isEmpty && email.isEmpty && email.isEmpty)
               {ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('The blanks can not be empty.'))
              );}
              else {Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=>SecondPage(
                    userNumber: phonenumber,
                    userEmail: email,
                  ),
              ),
              );
             }
       
            }, 
            child: Text('Log In'))
        ],
      ),
      
    );
  }
}