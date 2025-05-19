// Copyright (c) 2025 SADev. All rights reserved.
import 'package:flutter/material.dart';

// This is a custom widget for displaying answer options as buttons.
class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onPressed});

  // This function is called when the button is pressed.
  final void Function() onPressed;
  // This is the text displayed on the button.
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              vertical: 10, 
              horizontal: 40
            ),
            backgroundColor: const Color.fromARGB(47, 82, 125, 255),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
          ),
          child: Text(answerText, textAlign: TextAlign.center)
        )
    );        
  }
}