
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainQuiz extends StatelessWidget {
  const MainQuiz(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 250,
                  color: const Color.fromARGB(198, 255, 255, 255)
                ),
                // const Padding(padding: EdgeInsets.all(32.0)),
                const SizedBox(height: 20),
                Text(
                  'What kind of programmer soul are you?',
                  textAlign: TextAlign.center,
                   style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
                const SizedBox(height: 30),
                OutlinedButton.icon(
                  onPressed: startQuiz,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(55, 98, 134, 241), 
                    textStyle: const TextStyle(
                       fontSize: 16,
                       fontWeight: FontWeight.bold
                      ),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 1
                    ),
                  ),
                  icon: const Icon(Icons.arrow_right_alt),
                  label: const Text('Start Quiz'),
                )
              ],
    )
    );
  }
  
}