import 'package:flutter/material.dart';
import 'package:pop_quiz/features/exam/presentation/exam_page.dart';

class PopQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pop Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ExamPage(), // This should be your initial page or navigation setup
    );
  }
}
