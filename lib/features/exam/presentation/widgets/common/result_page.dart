import 'package:flutter/material.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';

class ResultPage extends StatelessWidget {
  final List<Question> questions;

  ResultPage({required this.questions});

  @override
  Widget build(BuildContext context) {
    int correctAnswers = questions
        .where((question) =>
            question.userSelectedAnswerId == question.correctAnswerId)
        .length;
    Duration totalTime = questions.fold(Duration.zero,
        (sum, question) => sum + (question.timeTaken ?? Duration.zero));
    double averageTime =
        questions.isNotEmpty ? totalTime.inSeconds / questions.length : 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Results:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text('Correct Answers: $correctAnswers/${questions.length}'),
            Text(
                'Average Time per Question: ${averageTime.toStringAsFixed(2)} seconds'),
            // Additional analytics and insights can be added here
          ],
        ),
      ),
    );
  }
}
