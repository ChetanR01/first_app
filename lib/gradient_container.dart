import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Dice Roller',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: DiceRoller(),
          ),
        ],
      ),
    );
  }
}
