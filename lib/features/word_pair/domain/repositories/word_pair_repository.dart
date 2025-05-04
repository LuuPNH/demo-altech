import '../entities/word_pair.dart';

abstract class WordPairRepository {
  /// Fetches a list of WordPairs (e.g., English-French word pairs).
  Future<List<WordPair>> getWordPairs();
}
