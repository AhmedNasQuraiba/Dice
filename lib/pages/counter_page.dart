import 'package:flutter/material.dart';
import '../main.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    required this.count1,
    required this.count2,
    required this.count3,
    required this.count4,
    required this.count5,
    required this.count6,
    super.key,
  });

  final int count1;
  final int count2;
  final int count3;
  final int count4;
  final int count5;
  final int count6;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0.87).toColor(),
      appBar: AppBar(
        title: Text(
          "DICE",
          style: TextStyle(
            fontSize: 42,
            letterSpacing: 2,
            color: HSLColor.fromAHSL(1, 0, 0, 1).toColor(),
            fontFamily: "Inria Serif",
          ),
        ),
        centerTitle: true,
        backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0).toColor(),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "1s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count1",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text(
                        "2s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count2",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "3s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count3",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text(
                        "4s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count4",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "5s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count5",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text(
                        "6s rolled:",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex Serif",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count6",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 64,
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(children: []),
              Row(children: []),
            ],
          ),
        ],
      ),
    );
  }
}
