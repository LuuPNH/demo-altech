part of 'word_pair_bloc.dart';

@immutable
class WordPairEvent extends BaseEvent {
  final WordPairEvent wordPair;

  WordPairEvent(this.wordPair);
}