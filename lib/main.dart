import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice App TIU'),
          backgroundColor: Colors.redAccent,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  final Random _random = Random();
  int dice1 = 1;
  int dice2 = 1;


  void rollDice() {
    setState(() {
      dice1 = _random.nextInt(6) + 1;
      dice2 = _random.nextInt(6) + 1;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: rollDice,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers the row content
          children: [
            Expanded(child: Image.asset('assets/dice$dice1.png')), // First die
            const SizedBox(width: 20), // Space between the dice
            Expanded(child: Image.asset('assets/dice$dice2.png')), // Second die
          ],
        ),
      ),
    );
  }
}
