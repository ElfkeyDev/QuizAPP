import 'package:flutter/material.dart';
import 'package:my_app/data/questions.dart';
import 'package:my_app/pages/score_page.dart';
import 'package:my_app/widgets/answer_widget.dart';
import 'package:my_app/widgets/question_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int qIndex = 0;
  int score = 0;
  int? chosenAnswer;
  bool quizFinished = false;
  void selectAnswer(int index) {
    setState(() {
      chosenAnswer = index;
    });
  }

  void nextQuestion() {
    setState(() {
      if (chosenAnswer != null &&
          questions[qIndex].answers[chosenAnswer!].isCorrect) {
        score += 10;
      }
      if (qIndex < questions.length - 1) {
        qIndex++;
        chosenAnswer = null;
      } else {
        quizFinished = true;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      qIndex = 0;
      score = 0;
      quizFinished = false;
      chosenAnswer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0F0F0F), Color(0xFF121212), Color(0xFF0A0A0A)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: !quizFinished
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  QuestionWidget(qIndex: qIndex),
                  ...List.generate(questions[qIndex].answers.length, (index) {
                    final answer = questions[qIndex].answers[index];
                    return AnswerWidget(
                      answer: answer,
                      isSelected: chosenAnswer == index,
                      onAnswerSelected: () => selectAnswer(index),
                    );
                  }),
                  const SizedBox(height: 20),
                  if (chosenAnswer != null)
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: nextQuestion,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1DB954),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            qIndex < questions.length - 1 ? 'Next' : 'Finish',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(height: 10),
                ],
              )
            : ScorePage(
                score: score,
                totalScore: questions.length * 10,
                onRestart: resetQuiz,
              ),
      ),
    );
  }
}
