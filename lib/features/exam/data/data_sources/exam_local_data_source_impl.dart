import 'package:pop_quiz/features/exam/data/datasources/exam_local_data_source.dart';
import 'package:pop_quiz/features/exam/data/models/question_model.dart';
import 'package:pop_quiz/services/local_storage/isar_local_storage_service_impl.dart';

class ExamLocalDataSourceImpl implements ExamLocalDataSource {
  final IsarLocalStorageServiceImpl localStorageService;

  ExamLocalDataSourceImpl(this.localStorageService);

  @override
  Future<List<QuestionModel>> getLastExamQuestions() async {
    return await localStorageService.getCachedQuestions();
  }

  @override
  Future<void> cacheExamQuestions(List<QuestionModel> questions) async {
    await localStorageService.cacheQuestions(questions);
  }
}
