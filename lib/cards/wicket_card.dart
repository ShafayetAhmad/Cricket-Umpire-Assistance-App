import 'package:flutter/material.dart';

class WicketCard extends StatefulWidget {
  const WicketCard({super.key});

  @override
  State<WicketCard> createState() => _WicketCard();
}

class _WicketCard extends State<WicketCard> {
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
      child: const Text(
        "Wicket Card",
        style: TextStyle(
            color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}
