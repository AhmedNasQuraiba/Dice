import 'dart:math';
import 'dart:async';
import 'pages/counter_page.dart';

import 'package:flutter/material.dart';
import 'utils.dart';

int count1 = 0, count2 = 0, count3 = 0, count4 = 0, count5 = 0, count6 = 0;
bool didRoll =
    false; //this is used to display a unqie message before user's first roll

void main() {
  runApp(
    MaterialApp(
      home: Dice(),
      routes: {
        "/Counter": (context) => CounterPage(
          count1: count1,
          count2: count2,
          count3: count3,
          count4: count4,
          count5: count5,
          count6: count6,
        ),
      },
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNum = Random().nextInt(6) + 1;
  bool buttonPressed = false;

  //int count1 = 0, count2 = 0, count3 = 0, count4 = 0, count5 = 0, count6 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0.87).toColor(),
      appBar: AppBar(
        title: Text(
          "DICE",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 42,
            color: HSLColor.fromAHSL(1, 0, 0, 1).toColor(),
            fontFamily: "Inria Serif",
          ),
        ),
        centerTitle: true,
        backgroundColor: HSLColor.fromAHSL(1, 0, 0, 0).toColor(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 30, 8, 0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.black),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Image.asset(
                  "assets/images/faces/$diceNum.png",
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    "${didRoll ? "YOU ROLLED" : "LET'S ROLL!"}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontFamily: "IBM Plex Serif",
                    ),
                  ),
                  Text(
                    "${didRoll ? diceNum : ""}",
                    style: TextStyle(
                      height: 1,
                      color: Color.fromARGB(255, 12, 12, 12),
                      fontSize: 135,
                      fontFamily: "IBM Plex Serif",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(75),
                    ),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        backgroundColor: HSLColor.fromAHSL(
                          1,
                          0,
                          0,
                          0,
                        ).toColor(),
                      ),
                      onPressed: buttonPressed
                          ? null
                          : () async {
                              int noFaces =
                                  25; //no of faces to show in spin animation

                              setState(() {
                                buttonPressed = true;
                              });

                              rollAnimation(noFaces);
                              await Future.delayed(
                                Duration(milliseconds: 50 * (noFaces + 7)),
                                () {},
                              );

                              print(diceNum);

                              //increment the correct counter
                              setState(() {
                                if (diceNum == 1) {
                                  print("A1");
                                  count1 += 1;
                                } else if (diceNum == 2) {
                                  print("A2");
                                  count2 += 1;
                                } else if (diceNum == 3) {
                                  print("A3");
                                  count3 += 1;
                                } else if (diceNum == 4) {
                                  print("A4");
                                  count4 += 1;
                                } else if (diceNum == 5) {
                                  print("A5");
                                  count5 += 1;
                                } else {
                                  print("A6");
                                  count6 += 1;
                                }
                              });

                              setState(() {
                                buttonPressed = false;
                              });

                              print(
                                "$count1 $count2 $count3 $count4 $count5 $count6",
                              );
                            },
                      child: Center(
                        child: Text(
                          "ROLL",
                          style: TextStyle(
                            letterSpacing: 2,
                            color: HSLColor.fromAHSL(1, 0, 0, 1).toColor(),
                            fontFamily: "Inria Serif",
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        backgroundColor: HSLColor.fromAHSL(
                          1,
                          0,
                          0,
                          0,
                        ).toColor(),
                        minimumSize: Size(65, 25),
                        side: BorderSide(width: 1.75),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.pushNamed(context, "/Counter");
                        });
                      },
                      child: Text(
                        "   Counter   ",
                        style: TextStyle(
                          color: HSLColor.fromAHSL(1, 0, 0, 1).toColor(),
                          fontFamily: "IBM Plex Serif",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // This method is for randomnly showing faces before revealing the final face after each roll
  void rollAnimation(int noFaces) async {
    didRoll = true;
    while (noFaces > 0) {
      setState(() {
        diceNum = swap(diceNum);
      });
      await Future.delayed(Duration(milliseconds: 50));
      noFaces -= 1;
    }
  }
}
