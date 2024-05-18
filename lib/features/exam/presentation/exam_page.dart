import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/responsive/exam_page_mobile.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/responsive/exam_page_tablet.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/responsive/exam_page_desktop.dart';

class ExamPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncQuestions = ref.watch(examControllerProvider);
    final examController = ref.read(examControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text('Exam')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return ExamPageMobile(
              asyncQuestions: asyncQuestions,
              examController: examController,
            );
          } else if (constraints.maxWidth < 1200) {
            return ExamPageTablet(
              asyncQuestions: asyncQuestions,
              examController: examController,
            );
          } else {
            return ExamPageDesktop(
              asyncQuestions: asyncQuestions,
              examController: examController,
            );
          }
        },
      ),
    );
  }
}
