import 'package:cricket_over_and_wicket_counter/cards/over_card.dart';
import 'package:flutter/material.dart';

class BallButton extends StatefulWidget {
  const BallButton({super.key});

  @override
  State<BallButton> createState() => _BallButton();
}

class _BallButton extends State<BallButton> {
  void wicketFunction() {
    setState(() {
      ball += 1;
    });
  }

  @override
  Widget build(context) {
    return OutlinedButton(
      onPressed: wicketFunction,
      child: Container(
        alignment: Alignment.center,
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.white),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: const Text(
          "Ball",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
