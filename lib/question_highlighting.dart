import 'package:flutter/material.dart';

class QuestionHighlighting extends StatelessWidget {
  const QuestionHighlighting({
    required this.questionIndex,
    required this.isCorrect,
    super.key,
  });
  final bool isCorrect;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    Color questionColor;
    if (isCorrect == true) {
      questionColor = const Color.fromARGB(255, 26, 163, 40);
    } else {
      questionColor = const Color.fromARGB(255, 205, 24, 11);
    }
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: questionColor,
        borderRadius: BorderRadius.circular(150),
      ),
      child: Text(
        questionIndex.toString(),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
