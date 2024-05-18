import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/data/datasources/exam_local_data_source_impl.dart';
import 'package:pop_quiz/services/local_storage/isar_local_storage_service_impl.dart';

final examLocalDataSourceProvider = Provider<ExamLocalDataSourceImpl>((ref) {
  final isar = ref.watch(isarProvider);
  return ExamLocalDataSourceImpl(isar);
});
