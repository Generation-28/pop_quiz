import 'package:isar/isar.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';

part 'question_model.g.dart';

@Collection()
class QuestionModel extends Question {
  Id id;

  @override
  @Index()
  final String text;

  final List<AnswerModel> answers;

  @override
  final String correctAnswerId;

  @ignore
  final String? userSelectedAnswerId;

  @ignore
  final Duration? timeTaken;

  QuestionModel({
    required this.id,
    required this.text,
    required this.answers,
    required this.correctAnswerId,
    this.userSelectedAnswerId,
    this.timeTaken,
  }) : super(
          id: id,
          text: text,
          answers: answers,
          correctAnswerId: correctAnswerId,
          userSelectedAnswerId: userSelectedAnswerId,
          timeTaken: timeTaken,
        );

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'],
      text: json['text'],
      answers: (json['answers'] as List)
          .map((answer) => AnswerModel.fromJson(answer))
          .toList(),
      correctAnswerId: json['correctAnswerId'],
      userSelectedAnswerId: json['userSelectedAnswerId'],
      timeTaken: json['timeTaken'] != null
          ? Duration(milliseconds: json['timeTaken'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'answers': answers.map((answer) => answer.toJson()).toList(),
      'correctAnswerId': correctAnswerId,
      'userSelectedAnswerId': userSelectedAnswerId,
      'timeTaken': timeTaken?.inMilliseconds,
    };
  }
}

@Embedded()
class AnswerModel extends Answer {
  AnswerModel({
    String? id,
    String? text,
    String? explanation,
  }) : super(id: id ?? '', text: text ?? '', explanation: explanation ?? '');

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return AnswerModel(
      id: json['id'],
      text: json['text'],
      explanation: json['explanation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'explanation': explanation,
    };
  }
}
