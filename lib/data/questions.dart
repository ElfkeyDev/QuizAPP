import 'package:quiz_app/models/answer_model.dart';
import 'package:quiz_app/models/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    question: 'What is the capital of France?',
    answers: [
      AnswerModel(title: 'London', onPressed: () {}),
      AnswerModel(title: 'Berlin', onPressed: () {}),
      AnswerModel(title: 'Paris', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'Madrid', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'What is 2 + 2?',
    answers: [
      AnswerModel(title: '3', onPressed: () {}),
      AnswerModel(title: '4', onPressed: () {}, isCorrect: true),
      AnswerModel(title: '5', onPressed: () {}),
      AnswerModel(title: '6', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'Is the sky blue?',
    answers: [
      AnswerModel(title: 'Yes', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'No', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'What color is a banana?',
    answers: [
      AnswerModel(title: 'Red', onPressed: () {}),
      AnswerModel(title: 'Blue', onPressed: () {}),
      AnswerModel(title: 'Yellow', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'Green', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'How many days in a week?',
    answers: [
      AnswerModel(title: '5', onPressed: () {}),
      AnswerModel(title: '6', onPressed: () {}),
      AnswerModel(title: '7', onPressed: () {}, isCorrect: true),
      AnswerModel(title: '8', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'What animal says "meow"?',
    answers: [
      AnswerModel(title: 'Dog', onPressed: () {}),
      AnswerModel(title: 'Cat', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'Bird', onPressed: () {}),
      AnswerModel(title: 'Fish', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'Is fire hot?',
    answers: [
      AnswerModel(title: 'Yes', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'No', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'What do you drink?',
    answers: [
      AnswerModel(title: 'Water', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'Sand', onPressed: () {}),
      AnswerModel(title: 'Paper', onPressed: () {}),
      AnswerModel(title: 'Wood', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'Which planet do we live on?',
    answers: [
      AnswerModel(title: 'Mars', onPressed: () {}),
      AnswerModel(title: 'Venus', onPressed: () {}),
      AnswerModel(title: 'Earth', onPressed: () {}, isCorrect: true),
      AnswerModel(title: 'Jupiter', onPressed: () {}),
    ],
  ),
  QuestionModel(
    question: 'What is 10 - 3?',
    answers: [
      AnswerModel(title: '5', onPressed: () {}),
      AnswerModel(title: '6', onPressed: () {}),
      AnswerModel(title: '7', onPressed: () {}, isCorrect: true),
      AnswerModel(title: '8', onPressed: () {}),
    ],
  ),
];
