import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/base_bloc/base_blocs.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecases/usecases.dart';

part 'word_pair_event.dart';
part 'word_pair_state.dart';

@Injectable()
class WordPairBloc extends BaseBloc<WordPairState> {
  WordPairBloc(this._shuffleWordsUseCase) : super(const WordPairState()) {
    on<WordPairEvent>(_onAddMainEventMatchWordPair);
  }

  
  // ignore: unused_field
  final ShuffleWordsUseCase _shuffleWordsUseCase;

  @override
  void onAddInitialEvent(InitialEvent event, Emitter<WordPairState> emit) async {}

  @override
  void onAddErrorEvent(ErrorEvent event, Emitter<WordPairState> emit) {
    emit(state.copyWith(error: event.error));
  }

  @override
  void onAddRefreshEvent(RefreshEvent event, Emitter<WordPairState> emit) async {}

  Future<void> _onAddMainEventMatchWordPair(
    WordPairEvent event,
    Emitter<WordPairState> emit,
  ) async {}
}
