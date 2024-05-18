import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pop_quiz/app.dart';

void main() {
  runApp(
    ProviderScope(
      child: PopQuizApp(),
    ),
  );
}
