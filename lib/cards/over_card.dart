import 'package:flutter/material.dart';

var over = 0;
var ball = 0;

class OverCard extends StatefulWidget {
  const OverCard({super.key});

  @override
  State<OverCard> createState() => _OvereCard();
}

class _OvereCard extends State<OverCard> {
  void ballUpdate() {
    setState(() {
      ball;
    });
  }

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.white),
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: Text(
        "Over: $over.$ball",
        style: const TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}
