import 'package:pop_quiz/features/exam/data/datasources/exam_local_data_source.dart';
import 'package:pop_quiz/features/exam/data/models/question_model.dart';
import 'package:isar/isar.dart';

class ExamLocalDataSourceImpl implements ExamLocalDataSource {
  final Future<Isar> isar;

  ExamLocalDataSourceImpl(this.isar);

  @override
  Future<List<QuestionModel>> getLastExamQuestions() async {
    final db = await isar;
    return await db.questionModels.where().findAll();
  }

  @override
  Future<void> cacheExamQuestions(List<QuestionModel> questions) async {
    final db = await isar;
    await db.writeTxn(() async {
      await db.questionModels.putAll(questions);
    });
  }
}
