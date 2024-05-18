import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/data/repositories/fake_exam_repository_impl.dart';
import 'package:pop_quiz/features/exam/domain/repositories/exam_repository.dart';

// final examRepositoryProvider = Provider<ExamRepository>((ref) {
//   final localDataSource = ref.read(examLocalDataSourceProvider);
//   final remoteDataSource = ref.read(examRemoteDataSourceProvider);
//   return ExamRepositoryImpl(
//       localDataSource: localDataSource, remoteDataSource: remoteDataSource);
// });

final examRepositoryProvider = Provider<ExamRepository>((ref) {
  return FakeExamRepositoryImpl();
});
