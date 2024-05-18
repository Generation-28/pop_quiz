import 'package:pop_quiz/features/exam/data/models/question_model.dart';

abstract class ExamLocalDataSource {
  Future<List<QuestionModel>> getLastExamQuestions();
  Future<void> cacheExamQuestions(List<QuestionModel> questions);
}
