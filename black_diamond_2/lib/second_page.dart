import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key,  });


  @override
  Widget build(BuildContext context) {
   return  const Scaffold(backgroundColor: Colors.black,
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(
            "Diamond is a solid form of the element carbon with its atoms arranged in a crystal structure called diamond cubic. Another solid form of carbon known as graphite is the chemically stable form of carbon at room temperature and pressure, but diamond is metastable and converts to it at a negligible rate under those conditions. Diamond has the highest hardness and thermal conductivity of any natural material, properties that are used in major industrial applications such as cutting and polishing tools. They are also the reason that diamond anvil cells can subject materials to pressures found deep in the Earth.",
            style: TextStyle(color: Colors.red,
            fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'Sofia-Regular'
            ),
            )]
            )
            )
            );
  }
}