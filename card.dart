import 'package:flutter/material.dart';

class QuestionCards extends StatelessWidget {
  final questionName;
  final Color;
  final height;
  final width;
  const QuestionCards({
    super.key,
    required this.questionName,
    required this.Color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        width: width,
        child: Card(
          color: Color,
          elevation: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  questionName,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
