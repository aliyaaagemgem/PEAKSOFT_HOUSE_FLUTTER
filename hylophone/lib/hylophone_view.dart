import 'package:flutter/material.dart';
import 'package:hylophone/components/piano_keys.dart';
import 'package:audioplayers/audioplayers.dart';




class HulophoneView extends StatefulWidget {
  const HulophoneView({super.key});

  @override
  State<HulophoneView> createState() => _HulophoneViewState();
}

class _HulophoneViewState extends State<HulophoneView> {
  final audioPlayers = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff363636),
 appBar: AppBar(backgroundColor: Color(0xff363636,),
    ),
    body: Column(
      children: [
        PianoKeys(
          color: Colors.red,
          onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota1.mp3'));
            
          },
          ),
        PianoKeys(
          color: Colors.orange,
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota2.mp3'));
            
          },
          ),
        PianoKeys(
          color: Colors.yellow,
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota3.mp3'));
           
          },
          ),
        PianoKeys(
          color: Colors.green,
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota4.mp3'));
         
          },
          ),
        PianoKeys(
          color: Color(0xff2E968C),
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota5.mp3'));
         
          },
          ),
        PianoKeys(
          color: Colors.blue,
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota6.mp3'));
         
          },
          ),
        PianoKeys(
          color: Colors.purple,
           onTap: () async{
           await audioPlayers.play(AssetSource('notes/nota7.mp3'));
         
          },
          ),
       ],
    ),
    );
  }
}

