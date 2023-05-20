import 'package:cricket_over_and_wicket_counter/cards/over_card.dart';
import 'package:flutter/material.dart';

import 'buttons/ball_button.dart';
import 'buttons/wicket_button.dart';
import 'cards/wicket_card.dart';
import 'space_between.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var over = 0;
  var ball = 0;
  var wicket = 0;

  void wicketFunction() {
    // print("wicket button pressed");
    setState(() {
      wicket += 1;
    });
  }

  void ballCount() {
    setState(() {
      ball += 1;
      if (ball == 6) {
        over += 1;
        ball = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Cricket Umpire Assistance App",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(100, 02, 64, 54),
        ),
        body: Container(
          color: const Color.fromRGBO(7, 48, 66, 1.000),
          child: Column(children: const [
            SpaceBetween(),
            WicketButton(),
            SpaceBetween(),
            WicketCard(),
            SpaceBetween(),
            BallButton(),
            SpaceBetween(),
            OverCard(),
          ]),
        ),
      ),
    );
  }
}
