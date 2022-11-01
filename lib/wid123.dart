import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
      home: Wid123(),
    ));

class Wid123 extends StatefulWidget {
  const Wid123({Key? key}) : super(key: key);

  @override
  State<Wid123> createState() => _Wid123State();
}

class _Wid123State extends State<Wid123> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              setState(() {
                int nIndex = index + 26;
                player.play(AssetSource("$nIndex.mp3"));
              });
            },
            child: Image.asset(
              "assets/images/numbers/$index.png",
            ),
          );
        },
        itemCount: 21,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
      ),
    );
  }
}
