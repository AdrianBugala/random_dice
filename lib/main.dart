import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rzut kostką'),
          centerTitle: true,
        ),
        body: const DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  int centerDice = 1;
  void onClicked() {
    setState(() {
      var random = Random();
      leftDice = random.nextInt(6) + 1;
      rightDice = random.nextInt(6) + 1;
    });
  }

  void oneClicked() {
    setState(() {
      var random = Random();
      leftDice = random.nextInt(6) + 1;
    });
  }

  void centerClicked() {
    setState(() {
      var random = Random();
      centerDice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 181,
              child: TextButton(
                onPressed: () {
                  centerClicked();
                },
                child: Image.asset('images/dice$centerDice.png'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      onClicked();
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      onClicked();
                    },
                    child: Image.asset('images/dice$rightDice.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
