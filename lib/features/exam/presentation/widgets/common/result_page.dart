import 'package:flutter/material.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';

class ResultPage extends StatelessWidget {
  final List<Question> questions;

  ResultPage({required this.questions});

  @override
  Widget build(BuildContext context) {
    final correctAnswers = questions
        .where((q) => q.userSelectedAnswerId == q.correctAnswerId)
        .length;
    final averageTime = questions
            .map((q) => q.timeTaken?.inSeconds ?? 0)
            .reduce((a, b) => a + b) /
        questions.length;

    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Results:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text('Correct Answers: $correctAnswers/${questions.length}'),
            Text(
                'Average Time per Question: ${averageTime.toStringAsFixed(2)} seconds'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Functionality to be implemented later
              },
              child: Text('View Details'),
            ),
          ],
        ),
      ),
    );
  }
}
