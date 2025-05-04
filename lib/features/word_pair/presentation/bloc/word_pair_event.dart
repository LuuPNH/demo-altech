part of 'word_pair_bloc.dart';

@immutable
class WordMatched extends BaseEvent {
  final WordPair wordPair;

  WordMatched(this.wordPair);
}

@immutable
class ChangeGameStatus extends BaseEvent {
  final GameStatus currentStatus;

  ChangeGameStatus(this.currentStatus);
}
@immutable
class GameGraded extends BaseEvent {}