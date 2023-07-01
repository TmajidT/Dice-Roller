import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  var diceNumber = "assets/images/dice-1.png";

  final diceRandom = Random();

  void diceRolled() {
    var rand = diceRandom.nextInt(6) + 1;
    setState(() {
      diceNumber = "assets/images/dice-$rand.png";
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceNumber,
          width: 100,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: diceRolled,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 10),
              // foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text(
            "roll the dice",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        )
      ],
    );
  }
}
