import 'package:flutter/material.dart';

//variable
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class CustomWidget extends StatelessWidget {
  CustomWidget({super.key});

  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Image Changing');
  }

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
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll Dice"))
        ],
      )),
    );
  }
}
