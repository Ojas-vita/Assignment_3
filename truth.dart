import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_application_4/card.dart';

var rnd = Random();

class truth extends StatefulWidget {
  const truth({super.key});

  @override
  State<truth> createState() => _truthState();
}

class _truthState extends State<truth> {
  int truth_win_count = 0;
  int truth_loss_count = 0;
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
          "Truth",
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
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      "$truth_win_count",
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
                                      "$truth_loss_count",
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
                questionName: "Who is the last person you called?",
                Color: Colors.cyan,
              ),
              QuestionCards(
                height: 295,
                width: 295,
                Color: Colors.red,
                questionName:
                    "What do you think about the clothes of the person on your left",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.green,
                questionName: "What is the thing you hate to eat the most?",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.yellow,
                questionName: "Which friend of yours do you admire the most?",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.amber,
                questionName: "Tell a secret you have hidden from your parents",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.blue[900],
                questionName:
                    "Tell the first letter of the person's name you are not on good terms with ",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.brown,
                questionName: "What is your favorite movie?",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.pink,
                questionName: "Who was the last person you shook hands with?",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.red[200],
                questionName: "Who is the best dressed in the room?",
              ),
              QuestionCards(
                height: 290,
                width: 290,
                Color: Colors.yellow[700],
                questionName: "What is your dream city and why?",
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
                    truth_win_count++;
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
                      truth_loss_count++;
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
