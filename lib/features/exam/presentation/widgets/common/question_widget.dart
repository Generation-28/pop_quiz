import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/domain/entities/question.dart';
import 'package:pop_quiz/features/exam/presentation/controllers/exam_controller.dart';

class QuestionWidget extends ConsumerStatefulWidget {
  final Question question;

  QuestionWidget({required this.question});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends ConsumerState<QuestionWidget> {
  String? _selectedAnswerId;
  bool _hasSubmitted = false;
  Timer? _timer;
  int _startTime = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didUpdateWidget(covariant QuestionWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.question.id != oldWidget.question.id) {
      setState(() {
        _selectedAnswerId = null;
        _hasSubmitted = false;
      });
      _resetTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _startTime = DateTime.now().millisecondsSinceEpoch;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  void _resetTimer() {
    _timer?.cancel();
    _startTimer();
  }

  Duration _timeTaken() {
    final endTime = DateTime.now().millisecondsSinceEpoch;
    final timeTaken = Duration(milliseconds: endTime - _startTime);
    return timeTaken;
  }

  @override
  Widget build(BuildContext context) {
    final hasAnswered =
        widget.question.userSelectedAnswerId != null || _hasSubmitted;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.question.text),
            for (var answer in widget.question.answers)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(answer.text!),
                    onTap: hasAnswered
                        ? null
                        : () {
                            setState(() {
                              _selectedAnswerId = answer.id!;
                            });
                          },
                    selected: hasAnswered
                        ? widget.question.userSelectedAnswerId == answer.id
                        : _selectedAnswerId == answer.id,
                  ),
                  if (hasAnswered)
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        answer.explanation!,
                        style: TextStyle(
                          color: answer.id == widget.question.correctAnswerId
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                    ),
                ],
              ),
            if (hasAnswered)
              Text(
                widget.question.userSelectedAnswerId ==
                        widget.question.correctAnswerId
                    ? 'Correct!'
                    : 'Incorrect',
                style: TextStyle(
                  color: widget.question.userSelectedAnswerId ==
                          widget.question.correctAnswerId
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            if (!hasAnswered)
              ElevatedButton(
                onPressed: _selectedAnswerId == null
                    ? null
                    : () {
                        ref.read(examControllerProvider.notifier).submitAnswer(
                              widget.question.id.toString(),
                              _selectedAnswerId!,
                              _timeTaken(),
                            );
                        setState(() {
                          _hasSubmitted = true;
                          _timer?.cancel();
                        });
                      },
                child: Text('Submit'),
              ),
          ],
        ),
      ),
    );
  }
}
