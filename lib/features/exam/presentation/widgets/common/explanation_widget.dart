import 'package:flutter/material.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';

class ExplanationWidget extends StatelessWidget {
  final Question question;

  ExplanationWidget({required this.question});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explanation:', style: TextStyle(fontWeight: FontWeight.bold)),
            for (var answer in question.answers)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(answer.text!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(answer.explanation!),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
