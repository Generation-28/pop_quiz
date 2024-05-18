import 'package:pop_quiz/features/exam/domain/entities/question.dart';

class ExamState {
  final List<Question> questions;

  ExamState({
    required this.questions,
  });

  factory ExamState.initial() {
    return ExamState(
      questions: [],
    );
  }
}
