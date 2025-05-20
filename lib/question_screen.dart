// Copyright (c) 2025 SADev. All rights reserved.
import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

// This widget displays the question screen of the quiz.
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  // This function is called when an answer is selected.
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

// This is the state class for the QuestionScreen widget.
class _QuestionScreenState extends State<QuestionScreen> {
  // This variable keeps track of the index of the current question.
  var currentQuestionIndex = 0;

  // This function handles the user selecting an answer.
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      // Increment the question index to display the next question.
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the current question from the list of questions.
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(currentQuestion.text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 24)),
              const SizedBox(height: 30),
              ...currentQuestion.listOfAnswers.map((answer) {
                return AnswerButton(
                  answerText: answer,
                  onPressed: () {
                    answerQuestion(answer);
                  },
                );
              })
            ]),
      ),
    );
  }
}
