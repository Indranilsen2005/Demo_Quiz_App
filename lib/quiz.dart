import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  int correctAnswer = 1;

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void storeSelectedAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'result-screen';
      });
    }

    for (var i = 0; i < 5; i++) {
      if (answer == questions[i].answer[0]) {
        correctAnswer++;
      }
    }
  }



  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      activeWidget = QuestionsScreen(storeSelectedAnswer);
    }

    if (activeScreen == 'result-screen') {
      activeWidget = ResultScreen(correctAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 62, 15, 172),
                  Color.fromARGB(255, 123, 17, 209),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: activeWidget

            // Using ternary expression
            // activeScreen == 'start-screen'
            //     ? StartScreen(switchScreen)
            //     : const QuestionsScreen(),

            ),
      ),
    );
  }
}
