import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiseRollerState();
  }
}
final randomizer = Random();
class _DiseRollerState extends State<DiceRoller> {
  
 var currentDiceRoll = 2;

  void rollDice() {
    
    setState(() {
      currentDiceRoll =  randomizer.nextInt(6) + 1; 
    });
  }
@override
  Widget build(content) {
    
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice/dice-$currentDiceRoll.png',
          width: 200,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              elevation: 0,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
                backgroundColor: Colors.transparent,
                padding: const EdgeInsets.all(10)),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
