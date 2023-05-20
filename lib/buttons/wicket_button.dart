import 'package:flutter/material.dart';

class WicketButton extends StatefulWidget {
  const WicketButton({super.key});

  @override
  State<WicketButton> createState() => _WicketButton();
}

class _WicketButton extends State<WicketButton> {
  void wicketFunction() {
    print("wicket button pressed");
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
          "Wicket",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
