part of 'word_pair_bloc.dart';

@immutable
class WordPairState {
  final bool isFirstLoad;
  final bool isLoading;
  final dynamic error;
  final GameStatus gameStatus;
  final Map<String, String> matches;
  final List<WordPair> originalWords;
  final int score;
  final List<String> englishWords;
  final List<String> frenceWords;

  const WordPairState({
    this.isFirstLoad = true,
    this.isLoading = false,
    this.error,
    this.gameStatus = GameStatus.initial,
    this.matches = const {},
    this.originalWords = const [],
    this.score = 0,
    this.englishWords = const [],
    this.frenceWords = const [],
  });

  WordPairState copyWith({
    bool? isFirstLoad,
    bool? isLoading,
    dynamic error,
    GameStatus? gameStatus,
    Map<String, String>? matches,
    List<WordPair>? originalWords,
    List<String>? englishWords,
    List<String>? frenceWords,
    int? score,
  }) {
    return WordPairState(
      isFirstLoad: isFirstLoad ?? false,
      isLoading: isLoading ?? false,
      error: error,
      gameStatus: gameStatus ?? this.gameStatus,
      matches: matches ?? this.matches,
      originalWords: originalWords ?? this.originalWords,
      score: score ?? this.score,
      englishWords: englishWords ?? this.englishWords,
      frenceWords: frenceWords ?? this.frenceWords,
    );
  }

  @override
  bool operator ==(covariant WordPairState other) {
    if (identical(this, other)) return true;
  
    return 
      other.isFirstLoad == isFirstLoad &&
      other.isLoading == isLoading &&
      other.error == error &&
      other.gameStatus == gameStatus &&
      mapEquals(other.matches, matches) &&
      listEquals(other.originalWords, originalWords) &&
      other.score == score &&
      listEquals(other.englishWords, englishWords) &&
      listEquals(other.frenceWords, frenceWords);
  }

  @override
  int get hashCode {
    return isFirstLoad.hashCode ^
      isLoading.hashCode ^
      error.hashCode ^
      gameStatus.hashCode ^
      matches.hashCode ^
      originalWords.hashCode ^
      score.hashCode ^
      englishWords.hashCode ^
      frenceWords.hashCode;
  }

  @override
  String toString() {
    return 'WordPairState(isFirstLoad: $isFirstLoad, isLoading: $isLoading, error: $error, gameStatus: $gameStatus, matches: $matches, originalWords: $originalWords, score: $score, englishWords: $englishWords, frenceWords: $frenceWords)';
  }
}
