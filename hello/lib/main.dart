import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;
  var num2 = 1;
  var state = '';
  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;
    setState(() {});
    if (num1 == 1 && num2 == 3) {
      state = ('player 1 is the winner');
    }
    if (num1 == 2 && num2 == 1) {
      state = ('player 1 is the winner');
    }
    if (num1 == 3 && num2 == 2) {
      state = ('player 1 is the winner');
    }
    if (num1 == 3 && num2 == 1) {
      state = ('player 2 is the winner');
    }
    if (num1 == 1 && num2 == 2) {
      state = ('player 2 is the winner');
    }
    if (num1 == 2 && num2 == 3) {
      state = ('player 2 is the winner');
    }
    if (num1 == num2) {
      state = ('Draw!');
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 143, 196, 104),
          title: Text('Game'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  play();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/i_$num1.png',
                            height: 120,
                            width: 120,
                          ),
                          Text("Player 1")
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/i_$num2.png',
                            height: 120,
                            width: 120,
                          ),
                          Text("Player 2")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              ),
              Text(state),
              Container(
                width: 100,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 143, 196, 104),
                  ),
                  onPressed: () {
                    play();
                  },
                  child: Text('Play'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
