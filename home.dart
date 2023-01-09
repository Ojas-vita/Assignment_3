import 'package:flutter/material.dart';
import 'package:flutter_application_4/pages/dare.dart';
import 'package:flutter_application_4/pages/truth.dart';
import 'dart:math';

var rnd = Random();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _countController = TextEditingController();
  // int win_count = 0;
  // int loss_count = 0;

  // void taskCompleted() {
  //   setState(() {
  //     win_count++;
  //   });
  // }

  // void taskForfeit() {
  //   setState(() {
  //     loss_count++;
  //   });
  // }

  // void countUpdate() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return DialogBox(
  //         Controller: _countController,
  //         onCompleted: taskCompleted,
  //         onForfeit: taskForfeit,
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text(
            "Truth and Dare",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.attractions)),
              Tab(icon: Icon(Icons.menu_book)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Dare(),
            truth(),
          ],
        ),
      ),
    );
  }
}
