import 'package:flutter/material.dart';
import 'package:my_app/data/questions.dart';

class QuestionWidget extends StatelessWidget {
  final int qIndex;
  const QuestionWidget({super.key, required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 40, bottom: 30, left: 20, right: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1DB954).withOpacity(0.2),
            const Color(0xFF1DB954).withOpacity(0.05),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF1DB954).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: LinearProgressIndicator(
              value: (qIndex + 1) / questions.length,
              backgroundColor: Colors.white.withOpacity(0.1),
              valueColor: const AlwaysStoppedAnimation(Color(0xFF1DB954)),
              minHeight: 4,
            ),
          ),
          // Question Number
          Text(
            'Question ${qIndex + 1}/${questions.length}',
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xFF1DB954).withOpacity(0.8),
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),

          // Question Text
          Text(
            questions[qIndex].question,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
