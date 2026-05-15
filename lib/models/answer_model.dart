import 'package:flutter/material.dart';

class AnswerModel {
  String title;
  VoidCallback onPressed;
  final bool isCorrect;
  AnswerModel({
    required this.title,
    required this.onPressed,
    this.isCorrect = false,
  });
}
