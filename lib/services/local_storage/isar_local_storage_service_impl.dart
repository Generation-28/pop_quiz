import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pop_quiz/features/exam/data/models/question_model.dart';
import 'package:pop_quiz/services/local_storage/local_storage_service.dart';

class IsarLocalStorageServiceImpl implements LocalStorageService {
  final Isar isar;

  IsarLocalStorageServiceImpl(this.isar);

  @override
  Future<List<QuestionModel>> getCachedQuestions() async {
    return await isar.questionModels.where().findAll();
  }

  @override
  Future<void> cacheQuestions(List<QuestionModel> questions) async {
    await isar.writeTxn(() async {
      await isar.questionModels.putAll(questions);
    });
  }
}

final isarProvider = Provider<Future<Isar>>((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return await Isar.open(
    [QuestionModelSchema],
    directory: dir.path,
  );
});

final isarLocalStorageServiceProvider =
    FutureProvider<IsarLocalStorageServiceImpl>((ref) async {
  final isar = await ref.watch(isarProvider);
  return IsarLocalStorageServiceImpl(isar);
});
