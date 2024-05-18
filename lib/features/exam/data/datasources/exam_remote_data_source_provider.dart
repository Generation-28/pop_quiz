import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pop_quiz/features/exam/data/datasources/exam_remote_data_source_impl.dart';
import 'package:pop_quiz/services/remote_storage/firestore_remote_storage_service_impl.dart';
import 'exam_remote_data_source.dart';

final firestoreProvider = Provider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});

final examRemoteDataSourceProvider = Provider<ExamRemoteDataSource>((ref) {
  final firestore = ref.read(firestoreProvider);
  return ExamRemoteDataSourceImpl(FirestoreRemoteStorageServiceImpl(firestore));
});
