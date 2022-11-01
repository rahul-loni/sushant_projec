import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Snack(),
    ));

class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
            builder: (context) => GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Tap character to play audio"),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                )));
  }
}
