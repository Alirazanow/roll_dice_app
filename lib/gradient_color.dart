import 'package:flutter/material.dart';
import 'package:roll_dice_app/roll_dice.dart';

const StartAlignmet = Alignment.topCenter;
const EndAligment = Alignment.bottomCenter;

class GradentScreen extends StatelessWidget {
  GradentScreen({
    required this.color1,
    required this.color2,
    super.key,
  });

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: StartAlignmet,
            end: EndAligment,
          ),
        ),
        child: Center(
          child: DiceRoll(),
        ));
  }
}
