import 'package:flutter/material.dart';

class WordTitleWidget extends StatelessWidget {
  final String word;
  final bool isUsed;

  const WordTitleWidget({
    super.key,
    required this.word,
    required this.isUsed,
  });

  @override
  Widget build(BuildContext context) {
    final content = Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        color: isUsed ? Colors.grey.shade200 : Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        word,
        style: TextStyle(
          fontSize: 16,
          color: isUsed ? Colors.grey : Colors.black,
        ),
      ),
    );

    return isUsed
        ? content
        : Draggable<String>(
            data: word,
            feedback: Material(
              child: content,
            ),
            child: content,
          );
  }
}
