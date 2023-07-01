import 'dart:math';

import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GraidientContainer extends StatelessWidget {
  const GraidientContainer(this.color, {super.key});

  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: color,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
