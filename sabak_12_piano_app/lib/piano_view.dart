import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoView extends StatelessWidget {
 PianoView({super.key});
  final player = AudioPlayer();
  

  @override
  Widget build(BuildContext context) {
    List<String> note = [
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7',
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7'
    ];
    final List<String> notes = [
      'nota1',
      'nota2',
      'nota3',
      'nota4',
      'nota5',
      'nota6',
      'nota7',
      'nota1',
      'nota2',
      'nota3',
      'nota4',
      'nota5',
      'nota6',
      'nota7',
    ];
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Stack(children: [
              ListView.builder(
                  itemCount: notes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, san) {
                    return InkWell(
                      onTap: () async {
                        await player.play(
                          AssetSource('${notes[san]}.mp3'),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        width: 56,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              note[san],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  }),
              Positioned(
                left: 35,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    player.play(AssetSource('${notes[0]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[1]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[1],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[2]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[2],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 285,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[3]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[3],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 346,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[4]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[4],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 346,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[5]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[5],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 283,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[6]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[6],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 160,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[7]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[7],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 100,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[8]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[8],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 35,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[9]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          note[9],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
    
      title: Center(
        child: const Text(
          'My Piano App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}