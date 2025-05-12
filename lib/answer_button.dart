import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onPressed});

  final void Function() onPressed;
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
            backgroundColor: const Color.fromARGB(255, 74, 23, 83),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
          ),
          child: Text(answerText, textAlign: TextAlign.center)
        )
    );        
  }
}