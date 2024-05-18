import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';
import 'package:pop_quiz/features/exam/presentation/exam_page.dart';

class ExamDetailsPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncQuestions = ref.watch(examControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Exam Details')),
      body: asyncQuestions.when(
        data: (questions) {
          final examName =
              'Sample Exam'; // Replace with actual exam name if available
          final numberOfQuestions = questions.length;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Exam Name: $examName',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                Text('Number of Questions: $numberOfQuestions'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExamPage()),
                    );
                  },
                  child: Text('Start Exam'),
                ),
              ],
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
