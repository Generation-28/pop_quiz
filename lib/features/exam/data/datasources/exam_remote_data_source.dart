import 'package:pop_quiz/features/exam/data/models/question_model.dart';

abstract class ExamRemoteDataSource {
  Future<List<QuestionModel>> fetchExamQuestions();
}
