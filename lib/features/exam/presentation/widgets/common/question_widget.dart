import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';

class QuestionWidget extends ConsumerWidget {
  final Question question;

  QuestionWidget({required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question.text),
            for (var answer in question.answers)
              ListTile(
                title: Text(answer.text!),
                tileColor: question.userSelectedAnswerId == answer.id
                    ? Colors.grey
                    : Colors.white,
                onTap: () {
                  ref.read(examControllerProvider.notifier).submitAnswer(
                        question.id.toString(),
                        answer.id.toString(),
                        const Duration(
                          seconds: 30,
                        ), // Replace with actual time taken if available
                      );
                },
              ),
            if (question.userSelectedAnswerId != null)
              Text(
                question.userSelectedAnswerId == question.correctAnswerId
                    ? 'Correct!'
                    : 'Incorrect',
                style: TextStyle(
                  color:
                      question.userSelectedAnswerId == question.correctAnswerId
                          ? Colors.green
                          : Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
