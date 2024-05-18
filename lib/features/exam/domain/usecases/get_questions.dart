import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/domain/repositories/exam_repository.dart';

class GetQuestions {
  final ExamRepository repository;

  GetQuestions(this.repository);

  Future<List<Question>> call() async {
    return await repository.getExamQuestions();
  }
}
