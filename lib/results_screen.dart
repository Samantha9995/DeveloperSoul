import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/question_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestartScreen});

  final List<String> chosenAnswers;
  final void Function() onRestartScreen;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
        summary.add({
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
    .where(
      (data) => data['user_answer'] == data['correct_answer']
    )
    .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions question correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 193, 145, 237),
              fontWeight: FontWeight.bold,
              fontSize: 18
            )),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            TextButton.icon(
                  onPressed: () {
                    onRestartScreen();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 229, 216, 241), 
                    textStyle: const TextStyle(
                       fontSize: 12,
                       fontWeight: FontWeight.bold
                      )
                  ),
                  icon: const Icon(Icons.replay),
                  label: const Text('Restart Quiz'),
                )
          ],
        ),
      ),
    );
  }



}