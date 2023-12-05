import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice_one.png';

  rollDice() {
    setState(() {});
    activeDiceImage = 'assets/images/dice_two.png';
    print("Changing me");
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
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
