part of 'word_pair_bloc.dart';

@immutable
class WordPairState {
  final bool isFirstLoad;
  final bool isLoading;
  final WordPair? currentWordPair;
  final List<WordPair> matchedWordPairs;
  final dynamic error;

  const WordPairState({
    this.isFirstLoad = true,
    this.isLoading = false,
    this.currentWordPair,
    this.matchedWordPairs = const [],
    this.error,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordPairState &&
          runtimeType == other.runtimeType &&
          isFirstLoad == other.isFirstLoad &&
          isLoading == other.isLoading &&
          currentWordPair == other.currentWordPair &&
          matchedWordPairs == other.matchedWordPairs &&
          error == other.error;

  @override
  int get hashCode =>
      isFirstLoad.hashCode ^
      isLoading.hashCode ^
      currentWordPair.hashCode ^
      matchedWordPairs.hashCode ^
      error.hashCode;

  WordPairState copyWith({
    bool? isFirstLoad,
    bool? isLoading,
    WordPair? currentWordPair,
    List<WordPair>? matchedWordPairs,
    dynamic error,
  }) {
    return WordPairState(
      isFirstLoad: isFirstLoad ?? false,
      isLoading: isLoading ?? false,
      error: error,
      currentWordPair: currentWordPair ?? this.currentWordPair,
      matchedWordPairs: matchedWordPairs ?? this.matchedWordPairs,
    );
  }
}
