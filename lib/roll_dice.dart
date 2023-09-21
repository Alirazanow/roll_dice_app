import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class DiceRoll extends StatefulWidget {
  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  // var activeDiceImage = 'assets/images/dice-1.png';
  var cuttrentDice = 2;
  void rollDice() {
    setState(() {
      cuttrentDice = randomize.nextInt(6) + 1;
      // cuttrentDice = Random().nextInt(6) + 1;
      // var diceRoll = Random().nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$cuttrentDice.png',
          // 'assets/images/dice-$cuttrentDice.png',
          //  activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 30,
              ),
            ),
            child: const Text('Dice A Role'))
      ],
    );
  }
}
