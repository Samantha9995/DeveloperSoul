import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/main_quiz.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/results_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = MainQuiz(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestartScreen: restartQuiz);
    }

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