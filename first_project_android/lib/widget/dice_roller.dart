import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 1;

  rollDice() {
    setState(() {});
    currentDiceRoll = randomizer.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceRoll.png',
        width: 150,
      ),
      TextButton(
        onPressed: () {
          rollDice();
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
