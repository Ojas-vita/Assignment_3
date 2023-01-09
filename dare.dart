// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_application_4/card.dart';

var rnd = Random();

class Dare extends StatefulWidget {
  const Dare({super.key});

  @override
  State<Dare> createState() => _DareState();
}

class _DareState extends State<Dare> {
  int dare_win_count = 0;
  int dare_loss_count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(35),
            right: Radius.circular(35),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 66, 91, 104),
        title: Text(
          "Dare",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color.fromARGB(135, 0, 0, 0)),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(137, 189, 209, 218)),
                            child: AlertDialog(
                              backgroundColor: Colors.black87,
                              title: Center(
                                  child: Text(
                                'Score',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "$dare_win_count",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.white60,
                                  ),
                                  Container(
                                    child: Text(
                                      "$dare_loss_count",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Spacer(),
                                        ElevatedButton(
                                            child: Text('Exit'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }),
                                      ])
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Text(
                    "Score",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          IndexedStack(
            index: rnd.nextInt(9),
            children: [
              QuestionCards(
                height: 300,
                width: 300,
                questionName: "Perform Vaudeville",
                Color: Colors.cyan,
              ),
              QuestionCards(
                height: 295,
                width: 295,
                Color: Colors.red,
                questionName: "Call your mom and say what your friends tell",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.green,
                questionName: "sing a song backwards",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Color.fromARGB(255, 163, 45, 187),
                questionName: "Let your friends pick your outfit",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Color.fromARGB(255, 255, 150, 30),
                questionName: "Don't blink your eyes for 2 minutes",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.blue[900],
                questionName: "Solve a coding problem within a minute",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.brown,
                questionName: "Mimic a character",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.pink,
                questionName: "Color your hair pink",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Color.fromARGB(255, 190, 78, 78),
                questionName:
                    "Eat a thing you given by the person on your right",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.yellow[700],
                questionName: "Do the dishes",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 60,
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                    dare_win_count++;
                  },
                  child: Text(
                    "Completed",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 130,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                    setState(() {
                      dare_loss_count++;
                    });
                  },
                  child: Text(
                    "Forfeit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
