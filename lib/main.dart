import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rzut kostką'),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset('images/dice1.png'),
          ),
          Expanded(
            child: Image.asset('images/dice2.png'),
          ),
        ],
      ),
    );
  }
}
