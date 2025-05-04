import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/base_bloc/base_blocs.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

part 'word_pair_event.dart';
part 'word_pair_state.dart';

enum GameStatus { initial, newGame, inGame, endGame }

@Injectable()
class WordPairBloc extends BaseBloc<WordPairState> {
  WordPairBloc(this._shuffleWordsUseCase) : super(const WordPairState()) {
    on<ChangeGameStatus>(_onAddChangeGameStatus);
    on<WordMatched>(_onAddWordMatched);
  }

  final ShuffleWordsUseCase _shuffleWordsUseCase;

  @override
  void onAddInitialEvent(InitialEvent event, Emitter<WordPairState> emit) async {
    //Fake smooth loading
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.copyWith(isFirstLoad: false));
  }

  @override
  void onAddErrorEvent(ErrorEvent event, Emitter<WordPairState> emit) {
    emit(state.copyWith(error: event.error));
  }

  Future<void> _onAddWordMatched(WordMatched event, Emitter<WordPairState> emit) async {
    final english = event.wordPair.english;
    final french = event.wordPair.french;

    // If either word has already been matched, ignore it
    final englishAlreadyUsed = state.matches.containsKey(english);
    final frenchAlreadyUsed = state.matches.containsValue(french);

    if (englishAlreadyUsed || frenchAlreadyUsed) return;

    final updatedMatches = Map<String, String>.from(state.matches)..[english] = french;

    emit(state.copyWith(matches: updatedMatches));
  }

  Future<void> _onAddChangeGameStatus(ChangeGameStatus event, Emitter<WordPairState> emit) async {
    switch (event.currentStatus) {
      case GameStatus.initial:
      case GameStatus.newGame:
        await _startGame(emit);
        break;
      case GameStatus.inGame:
        await _gradedGame(emit);
        break;
      case GameStatus.endGame:
        emit(WordPairState());
        break;
    }
  }

  Future<void> _startGame(Emitter<WordPairState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _shuffleWordsUseCase.call();
    if (result.isEmpty) {
      throw 'No words found';
    }
    final englishWords = result.map((e) => e.english).toList()..shuffle();
    final frenchWords = result.map((e) => e.french).toList()..shuffle();

    emit(
      state.copyWith(
        isLoading: false,
        originalWords: result,
        gameStatus: GameStatus.inGame,
        englishWords: englishWords,
        frenceWords: frenchWords,
      ),
    );
  }

  Future<void> _gradedGame(Emitter<WordPairState> emit) async {
    int correct = 0;

    state.matches.forEach((english, french) {
      final isCorrect = state.originalWords.any(
        (pair) => pair.english == english && pair.french == french,
      );
      if (isCorrect) correct++;
    });

    emit(state.copyWith(score: correct, gameStatus: GameStatus.endGame));
  }
}
