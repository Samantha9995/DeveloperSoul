// Copyright (c) 2025 SADev. All rights reserved.
import 'package:developer_soul_quiz/about_me.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// This is the main quiz screen widget.
class MainQuiz extends StatelessWidget {
  // This is the constructor for the MainQuiz widget.
  // It takes a function that starts the quiz as a parameter.
  const MainQuiz(this.startQuiz, {super.key});

  // This function is called when the start quiz button is pressed.
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png',
                  width: 250, color: const Color.fromARGB(198, 255, 255, 255)),
              // const Padding(padding: EdgeInsets.all(32.0)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text('What kind of programmer soul are you?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(55, 98, 134, 241),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255), width: 1),
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz'),
              )
            ],
          )),
          Positioned(
            top: 16,
            right: 16,
            child: PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onSelected: (String item) {
                switch (item) {
                  case 'About':
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutMePage()));
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'About',
                    child: Text('About the developer'),
                  ),
                ];
              },
            ),
          )
        ]));
  }
}
