import 'package:pop_quiz/features/exam/data/models/question_model.dart';

abstract class LocalStorageService {
  Future<List<QuestionModel>> getCachedQuestions();
  Future<void> cacheQuestions(List<QuestionModel> questions);
}
