import 'package:flutter/material.dart';
import 'dart:math';

final randomObj = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // Fun to roll dice
  var diceValue = 1;

  rollDice() {
    setState(() {
      diceValue = randomObj.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceValue.png',
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 10),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 10),
              ),
              child: const Text(
                'Roll Dice',
              ),
            ),
          ],
        )
      ],
    );
  }
}
