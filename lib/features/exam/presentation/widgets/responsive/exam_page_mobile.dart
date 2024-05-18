import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/question_widget.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/result_page.dart';

class ExamPageMobile extends StatelessWidget {
  final AsyncValue<List<Question>> asyncQuestions;
  final ExamController examController;

  ExamPageMobile({
    required this.asyncQuestions,
    required this.examController,
  });

  @override
  Widget build(BuildContext context) {
    return asyncQuestions.when(
      data: (questions) {
        final currentQuestion = examController.currentQuestion;
        if (currentQuestion == null) {
          return Center(child: Text('No questions available.'));
        }
        return Column(
          children: [
            Expanded(
              child: QuestionWidget(
                question: currentQuestion,
                onReset: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (examController.currentQuestionIndex > 0)
                  ElevatedButton(
                    onPressed: () {
                      examController.previousQuestion();
                    },
                    child: Text('Previous'),
                  ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (examController.isLastQuestion) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ResultPage(questions: questions),
                        ),
                      );
                    } else {
                      examController.nextQuestion();
                    }
                  },
                  child:
                      Text(examController.isLastQuestion ? 'Submit' : 'Next'),
                ),
              ],
            ),
          ],
        );
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
