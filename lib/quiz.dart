import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

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

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      activeWidget = const QuestionsScreen();
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
