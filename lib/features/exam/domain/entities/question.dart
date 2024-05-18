import 'package:isar/isar.dart';

class Question {
  final Id id;
  final String text;
  @ignore
  final List<Answer> answers;
  final String correctAnswerId;
  final String? userSelectedAnswerId;
  @ignore
  final Duration? timeTaken;

  Question({
    required this.id,
    required this.text,
    required this.answers,
    required this.correctAnswerId,
    this.userSelectedAnswerId,
    this.timeTaken,
  });

  Question copyWith({
    String? userSelectedAnswerId,
    Duration? timeTaken,
  }) {
    return Question(
      id: id,
      text: text,
      answers: answers,
      correctAnswerId: correctAnswerId,
      userSelectedAnswerId: userSelectedAnswerId ?? this.userSelectedAnswerId,
      timeTaken: timeTaken ?? this.timeTaken,
    );
  }
}

class Answer {
  final String? id;
  final String? text;
  final String? explanation;

  Answer({
    required this.id,
    required this.text,
    required this.explanation,
  });

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(
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
