import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/question_widget.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/result_page.dart';

class ExamPageDesktop extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncQuestions = ref.watch(examControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Exam')),
      body: asyncQuestions.when(
        data: (questions) {
          return Row(
            children: [
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: questions.length,
                  itemBuilder: (context, index) {
                    final question = questions[index];
                    return QuestionWidget(question: question);
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: ResultPage(questions: questions),
              ),
            ],
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
