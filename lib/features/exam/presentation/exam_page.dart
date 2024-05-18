import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/question_widget.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/result_page.dart';

class ExamPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncQuestions = ref.watch(examControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Exam')),
      body: asyncQuestions.when(
        data: (questions) {
          return ListView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              final question = questions[index];
              return QuestionWidget(question: question);
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      floatingActionButton: asyncQuestions.maybeWhen(
        data: (questions) => questions.isNotEmpty
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(questions: questions)),
                  );
                },
                child: Icon(Icons.check),
              )
            : null,
        orElse: () => null,
      ),
    );
  }
}
