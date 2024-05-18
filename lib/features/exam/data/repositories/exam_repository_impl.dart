import 'package:pop_quiz/core/failures/failures.dart';
import 'package:pop_quiz/features/exam/data/datasources/exam_local_data_source.dart';
import 'package:pop_quiz/features/exam/data/datasources/exam_remote_data_source.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/domain/repositories/exam_repository.dart';

class ExamRepositoryImpl implements ExamRepository {
  final ExamLocalDataSource localDataSource;
  final ExamRemoteDataSource remoteDataSource;

  ExamRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<List<Question>> getExamQuestions() async {
    try {
      final remoteQuestions = await remoteDataSource.fetchExamQuestions();
      localDataSource.cacheExamQuestions(remoteQuestions);
      return remoteQuestions;
    } catch (e) {
      throw ServerFailure();
    }
  }
}
