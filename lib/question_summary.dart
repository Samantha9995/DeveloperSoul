import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            var isCorrent = data['user_answer'] == data['correct_answer'];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: isCorrent ? const Color.fromARGB(255, 81, 199, 195) :const Color.fromARGB(255, 217, 62, 214),
                  radius: 14,
                  child: Text(((
                    data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                    )
                  )
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 14
                        )
                      ),
                      const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 184, 130, 234),
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        )
                      ),
                      Text(
                        data['correct_answer'] as String,
                          style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 137, 162, 239),
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        )
                      )
                    ],
                  ),
                ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}