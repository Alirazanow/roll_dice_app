import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_color.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 139, 4),
        body: GradentScreen(
          color1: Color.fromARGB(255, 119, 112, 8),
          color2: Color.fromARGB(255, 216, 186, 13),
        ),
      ),
    ),
  );
}
