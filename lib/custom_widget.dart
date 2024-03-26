import 'package:flutter/material.dart';
import "diceroller.dart";

//variable
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class CustomWidget extends StatelessWidget {
  CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //cannot use const with var variable
        gradient: LinearGradient(
          colors: const [Colors.deepPurple, Color.fromARGB(255, 81, 22, 243)],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
