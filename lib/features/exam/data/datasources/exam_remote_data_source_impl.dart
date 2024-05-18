import 'package:pop_quiz/features/exam/data/datasources/exam_remote_data_source.dart';
import 'package:pop_quiz/features/exam/data/models/question_model.dart';
import 'package:pop_quiz/services/remote_storage/remote_storage_service.dart';

class ExamRemoteDataSourceImpl implements ExamRemoteDataSource {
  final RemoteStorageService remoteStorageService;

  ExamRemoteDataSourceImpl(this.remoteStorageService);

  @override
  Future<List<QuestionModel>> fetchExamQuestions() async {
    return await remoteStorageService.getExamQuestions();
  }
}
