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
      backgroundColor: Color.fromARGB(255, 169, 64, 64),
      appBar: AppBar(
        title: Text(
          "DICE",
          style: TextStyle(
            fontSize: 45,
            color: Color.fromARGB(255, 210, 210, 210),
            fontFamily: "Sancreek Regular",
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 105, 21, 21),
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count1",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count2",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count3",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count4",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count5",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
                          fontFamily: "PlayfairDisplay Regular",
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "$count6",
                        style: TextStyle(
                          height: 1,
                          color: Color.fromARGB(255, 12, 12, 12),
                          fontSize: 100,
                          fontFamily: "Sancreek Regular",
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
