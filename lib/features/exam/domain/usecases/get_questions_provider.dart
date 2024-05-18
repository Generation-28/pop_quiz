import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'get_questions.dart';
import 'package:pop_quiz/features/exam/data/repositories/exam_repository_provider.dart';

final getQuestionsProvider = Provider<GetQuestions>((ref) {
  final repository = ref.read(examRepositoryProvider);
  return GetQuestions(repository);
});
