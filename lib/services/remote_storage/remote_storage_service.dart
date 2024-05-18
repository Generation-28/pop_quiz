import 'package:pop_quiz/features/exam/data/models/question_model.dart';

abstract class RemoteStorageService {
  Future<List<QuestionModel>> getExamQuestions();
}
