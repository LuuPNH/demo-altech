class WordPair {
  final String english;
  final String french;

  WordPair({required this.english, required this.french});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordPair &&
          runtimeType == other.runtimeType &&
          english == other.english &&
          french == other.french;

  @override
  int get hashCode => english.hashCode ^ french.hashCode;

  @override
  String toString() {
    return 'WordPair{english: $english, french: $french}';
  }

  WordPair copyWith({String? english, String? french}) {
    return WordPair(english: english ?? this.english, french: french ?? this.french);
  }
}
