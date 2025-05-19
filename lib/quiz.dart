// Copyright (c) 2025 SADev. All rights reserved.

import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/main_quiz.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';

// This is the main Quiz widget that manages the state and flow of the quiz application.
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}

// This is the state class for the Quiz widget.
class _QuizState extends State<Quiz> {
  // This list stores the answers selected by the user.
  List<String> selectedAnswers = [];
  // This variable determines which screen is currently displayed.
  var activeScreen = 'start-screen';

  // This function switches the active screen to the question screen.
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  // This function handles the user choosing an answer.
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    // If all questions have been answered, switch to the results screen.
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  // This function restarts the quiz by clearing the selected answers and returning to the start screen.
  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    // This widget is displayed based on the current active screen.
    Widget screenWidget = MainQuiz(switchScreen);

    // If the active screen is the question screen, display the QuestionScreen widget.
    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      // If the active screen is the results screen, display the ResultsScreen widget.
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestartScreen: restartQuiz);
    }

    // This is the main MaterialApp widget that defines the structure of the app.
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: Container (
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 17, 56, 186),
                        Color.fromARGB(255, 109, 190, 237)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                    ),
                  ),
                  child: Center (
                    child: screenWidget,
                  ),
                ),
            )
        );
  }

}