import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/domain/repositories/exam_repository.dart';

class FakeExamRepositoryImpl implements ExamRepository {
  @override
  Future<List<Question>> getExamQuestions() async {
    return [
      Question(
        id: 1,
        text: 'What is the capital of France?',
        answers: [
          Answer(
              id: 'a',
              text: 'Paris',
              explanation: 'Paris is the capital of France.'),
          Answer(
              id: 'b',
              text: 'London',
              explanation: 'London is the capital of the UK.'),
          Answer(
              id: 'c',
              text: 'Rome',
              explanation: 'Rome is the capital of Italy.'),
          Answer(
              id: 'd',
              text: 'Berlin',
              explanation: 'Berlin is the capital of Germany.'),
        ],
        correctAnswerId: 'a',
      ),
      Question(
        id: 2,
        text: 'What is 2 + 2?',
        answers: [
          Answer(id: 'a', text: '3', explanation: 'Incorrect.'),
          Answer(id: 'b', text: '4', explanation: 'Correct.'),
          Answer(id: 'c', text: '5', explanation: 'Incorrect.'),
          Answer(id: 'd', text: '6', explanation: 'Incorrect.'),
        ],
        correctAnswerId: 'b',
      ),
      // Add more questions as needed
    ];
  }
}
