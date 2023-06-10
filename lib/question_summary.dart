import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
// import 'package:quiz_app/data/questions.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(((data['questions-index'] as int) + 1).toString()),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data[questions] as String),
                        const SizedBox(height: 5),
                        Text(data['user-answer'] as String),
                        Text(data['correct-answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
