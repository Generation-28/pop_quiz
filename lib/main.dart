import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/features/exam/presentation/widgets/common/exam_details_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pop Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamDetailsPage(),
    );
  }
}
