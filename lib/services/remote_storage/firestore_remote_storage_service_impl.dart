import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pop_quiz/features/exam/data/models/question_model.dart';
import 'package:pop_quiz/services/remote_storage/remote_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirestoreRemoteStorageServiceImpl implements RemoteStorageService {
  final FirebaseFirestore firestore;

  FirestoreRemoteStorageServiceImpl(this.firestore);

  @override
  Future<List<QuestionModel>> getExamQuestions() async {
    final querySnapshot = await firestore.collection('questions').get();
    return querySnapshot.docs
        .map(
            (doc) => QuestionModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}

final firestoreRemoteStorageServiceProvider =
    Provider<FirestoreRemoteStorageServiceImpl>((ref) {
  final firestore = FirebaseFirestore.instance;
  return FirestoreRemoteStorageServiceImpl(firestore);
});
