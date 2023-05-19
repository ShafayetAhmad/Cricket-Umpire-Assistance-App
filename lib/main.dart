import 'package:flutter/material.dart';

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

  void wicketCount() {
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
          title: const Text("Testing"),
        ),
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Over: $over Overs',
                style: const TextStyle(fontSize: 50),
              ),

              const SizedBox(width: double.infinity, height: 20),

              // Ball Count
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 5),
                ),
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(100),
                    ),
                  ),
                  onPressed: ballCount,
                  child: Text(
                    '$ball Ball',
                    style: const TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(width: double.infinity, height: 20),
              // Wickets Count
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: wicketCount,
                child: Text(
                  '$wicket Wickets',
                  style: const TextStyle(fontSize: 50, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
