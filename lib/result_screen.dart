import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.chosenAnswer,
  });
  final List<String> chosenAnswer;
  final int totalQuestions = questions.length;

  // Creating a map
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add(
        {
          'question-index': i,
          'question': questions[i].question,
          'correct-answer': questions[i].answer[i],
          'user-answer': chosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
          ),
          const SizedBox(height: 30),
          QuestionSummary(summaryData),
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
