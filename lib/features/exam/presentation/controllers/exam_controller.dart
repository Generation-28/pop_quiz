import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/domain/usecases/get_questions.dart';
import 'package:pop_quiz/features/exam/domain/usecases/get_questions_provider.dart';

final examControllerProvider =
    StateNotifierProvider<ExamController, AsyncValue<List<Question>>>(
  (ref) => ExamController(ref.read(getQuestionsProvider)),
);

class ExamController extends StateNotifier<AsyncValue<List<Question>>> {
  final GetQuestions getQuestions;
  int _currentQuestionIndex = 0;

  ExamController(this.getQuestions) : super(const AsyncValue.loading()) {
    loadQuestions();
  }

  Future<void> loadQuestions() async {
    state = const AsyncValue.loading();
    try {
      final questions = await getQuestions();
      state = AsyncValue.data(questions);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  void submitAnswer(
      String questionId, String selectedAnswerId, Duration timeTaken) {
    state = state.whenData((questions) {
      return questions.map((question) {
        if (question.id.toString() == questionId) {
          return question.copyWith(
            userSelectedAnswerId: selectedAnswerId,
            timeTaken: timeTaken,
          );
        }
        return question;
      }).toList();
    });
  }

  void nextQuestion() {
    if (_currentQuestionIndex < (state.value?.length ?? 0) - 1) {
      _currentQuestionIndex++;
      // Notify listeners about the change
      state = AsyncValue.data(state.value!);
    }
  }

  void previousQuestion() {
    if (_currentQuestionIndex > 0) {
      _currentQuestionIndex--;
      // Notify listeners about the change
      state = AsyncValue.data(state.value!);
    }
  }

  int get currentQuestionIndex => _currentQuestionIndex;
  Question? get currentQuestion => state.value?[currentQuestionIndex];
  bool get isLastQuestion =>
      _currentQuestionIndex == (state.value?.length ?? 1) - 1;

  void resetExam() {
    _currentQuestionIndex = 0;
    loadQuestions();
  }
}
