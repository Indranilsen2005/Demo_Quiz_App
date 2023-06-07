import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(context) {
    return Container(
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              label: const Text(
                'Start Quiz',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
