import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
      home: Abc(),
    ));

class Abc extends StatefulWidget {
  const Abc({Key? key}) : super(key: key);

  @override
  State<Abc> createState() => _AbcState();
}

class _AbcState extends State<Abc> {
  AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              setState(() {
                player.play(AssetSource("$index.mp3"));
              });
            },
            child: Image.asset(
              "assets/images/alphabets/$index.png",
            ),
          );
        },
        itemCount: 26,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
