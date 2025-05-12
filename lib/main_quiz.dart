
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainQuiz extends StatelessWidget {
  const MainQuiz(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 250,
                  color: const Color.fromARGB(150, 255, 255, 255)
                ),
                // const Padding(padding: EdgeInsets.all(32.0)),
                const SizedBox(height: 80),
                Text(
                  'Learn Flutter the fun way!',
                   style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  )
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  onPressed: startQuiz,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.bold
                      )
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Start Quiz'),
                )
              ],
    );
  }
  
}