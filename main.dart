import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const musicWidget());
}

class musicWidget extends StatelessWidget {
  const musicWidget({super.key});
  Widget myButton(int i) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
            onPressed: () async {
              final player = AudioPlayer();
              await player.play(AssetSource('sounds/music-$i.mp3'));
            },
            child: Row(children: [
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              SizedBox(
                width: 20,
              ),
              Text('sound $i',
                  style: TextStyle(fontSize: 20, color: Colors.red)),
            ])),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Text('sounds',
              style: TextStyle(fontSize: 30, color: Colors.indigo[900])),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          myButton(1),
          myButton(2),
          myButton(3),
          myButton(4),
          myButton(5),
          myButton(6),
          myButton(7),
        ]),
      ),
    );
  }
}
