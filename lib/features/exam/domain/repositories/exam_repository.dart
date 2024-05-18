import 'package:pop_quiz/features/exam/domain/entities/question.dart';

abstract class ExamRepository {
  Future<List<Question>> getExamQuestions();
}
