import 'package:flutter/material.dart';

class WordTitleTargetWidget extends StatelessWidget {
  final String frenchWord;
  final String? matchedEnglish;
  final bool isCorrect;
  final void Function(String englishWord) onAccept;

  const WordTitleTargetWidget({
    super.key,
    required this.frenchWord,
    required this.matchedEnglish,
    required this.isCorrect,
    required this.onAccept,
  });

  @override
  Widget build(BuildContext context) {
    Color? subtitleColor;
    if (matchedEnglish != null) {
      subtitleColor = isCorrect ? Colors.green : Colors.red;
    }

    return DragTarget<String>(
      builder: (context, candidateData, rejectedData) {
        return Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(frenchWord, style: const TextStyle(fontSize: 16)),
              if (matchedEnglish != null)
                Text(matchedEnglish!, style: TextStyle(fontSize: 14, color: subtitleColor)),
            ],
          ),
        );
      },
      onAcceptWithDetails: (v) => onAccept.call(v.data),
    );
  }
}
