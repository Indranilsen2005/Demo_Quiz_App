import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.correctAnswer, {super.key});
  final int correctAnswer;

  final int totalQuestions = questions.length;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $correctAnswer out of $totalQuestions questions correctly!',
          ),
          const SizedBox(height: 30),
          const Text('List of questions ans answers'),
          const SizedBox(height: 30),
          OutlinedButton(
            onPressed: () {
              // StartScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
