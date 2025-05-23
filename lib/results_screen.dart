// Copyright (c) 2025 SADev. All rights reserved.
import 'package:developer_soul_quiz/data/question.dart';
import 'package:developer_soul_quiz/models/answer_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This widget displays the results screen of the quiz.
class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestartScreen});

  // This is the list of answers chosen by the user.
  final List<String> chosenAnswers;
  // This function is called when the restart button is pressed.
  final void Function() onRestartScreen;

  // This getter calculates the summary data for the results screen.
  Map<String, String> get summaryData {
    final Map<String, String> summary = {};
    double summaryScore = 0;

    // Loop through the chosen answers and calculate the score.
    for (var i = 0; i < chosenAnswers.length; i++) {
      final Map<String, int> listOfAnswers = questions[i].answers;
      final int? score = listOfAnswers.containsKey(chosenAnswers[i])
          ? listOfAnswers[chosenAnswers[i]]
          : 0;

      if (score != null && score > 0) {
        summaryScore += score;
      }
    }

    // Determine the answer type based on the score.
    var answerType = AnswerType(summaryScore);

    // Store the score, answer type, and description in the summary map.
    summary['score'] = summaryScore.toString();
    summary['type'] = answerType.answer;
    summary['description'] = answerType.answerDescption;

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You are ${summaryData['type']}!',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            const SizedBox(height: 30),
            Text(summaryData['description'].toString(),
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {
                onRestartScreen();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(55, 98, 134, 241),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255), width: 1),
              ),
              icon: const Icon(Icons.replay),
              label: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
