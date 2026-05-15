import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_model.dart';

class AnswerWidget extends StatefulWidget {
  final AnswerModel answer;
  final VoidCallback onAnswerSelected;
  final bool isSelected;

  const AnswerWidget({
    super.key,
    required this.answer,
    required this.onAnswerSelected,
    this.isSelected = false,
  });

  @override
  State<AnswerWidget> createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Material(
        color: widget.isSelected
            ? const Color(0xFF1DB954).withOpacity(0.2)
            : const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: widget.onAnswerSelected,
          borderRadius: BorderRadius.circular(12),
          splashColor: const Color(0xFF1DB954).withOpacity(0.3),
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: widget.isSelected
                    ? const Color(0xFF1DB954).withOpacity(0.5)
                    : Colors.white.withOpacity(0.05),
                width: widget.isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                // Circle Icon
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: widget.isSelected
                          ? const Color(0xFF1DB954)
                          : Colors.white.withOpacity(0.4),
                      width: 2,
                    ),
                    color: widget.isSelected
                        ? const Color(0xFF1DB954)
                        : Colors.transparent,
                  ),
                  child: widget.isSelected
                      ? const Icon(Icons.check, color: Colors.black, size: 14)
                      : null,
                ),
                const SizedBox(width: 12),
                // Title
                Expanded(
                  child: Text(
                    widget.answer.title,
                    style: TextStyle(
                      color: widget.isSelected ? Colors.white : Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
