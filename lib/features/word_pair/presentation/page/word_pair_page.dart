import 'package:demo_app/app/base_bloc/base_blocs.dart';
import 'package:demo_app/features/word_pair/presentation/bloc/word_pair_bloc.dart';
import 'package:demo_app/resources/dimens/dimens.dart';
import 'package:demo_app/resources/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../widgets/widgets.dart';

class WordPairPage extends StatefulWidget {
  const WordPairPage({super.key});

  @override
  State<WordPairPage> createState() => _WordPairPageState();
}

class _WordPairPageState extends BaseWidget<WordPairBloc, WordPairPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).wordPair),
        centerTitle: true,
        backgroundColor: AppColors.lightSeed,
      ),
      body: BlocProvider<WordPairBloc>(create: (context) => bloc, child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<WordPairBloc, WordPairState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        switch (state.gameStatus) {
          case GameStatus.initial:
            return _buildButtonPlay(state.gameStatus, S.of(context).go);
          case GameStatus.newGame:
            return const Center(child: Text('New Game State')); /// This case setup is not used in the current implementation
          case GameStatus.inGame:
            return _buildMainGame(state);
          case GameStatus.endGame:
            return _buildGradedGame(state);
        }
      },
    );
  }

  Widget _buildButtonPlay(GameStatus status, String title) {
    return Center(
      child: CommonButton(onPressed: () => bloc.add(ChangeGameStatus(status)), title: title),
    );
  }

  Widget _buildGradedGame(WordPairState state) {
    final total = state.originalWords.length;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: Dimens.appHorizontalPadding,
      children: [
        _buildButtonPlay(state.gameStatus, S.of(context).goAgain),

        Text(
          S.of(context).score(state.score, total),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildMainGame(WordPairState state) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.sizeSpacingXS),
      child: SingleChildScrollView(
        child: Column(
          spacing: Dimens.appHorizontalPadding,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CommonButton(
              onPressed: () => bloc.add(ChangeGameStatus(GameStatus.inGame)),
              title: S.of(context).grade,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.darkNeutral),
                borderRadius: BorderRadius.circular(Dimens.borderRadiusMD),
              ),
              padding: const EdgeInsets.all(Dimens.sizeSpacingXS),
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children:
                          state.englishWords.map((e) {
                            final isUsed = state.matches.containsKey(e);
                            return WordTitleWidget(word: e, isUsed: isUsed);
                          }).toList(),
                    ),
                  ),

                  const VerticalDivider(),

                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children:
                          state.frenceWords.map((f) {
                            final matchedEnglish =
                                state.matches.entries
                                    .firstWhere(
                                      (entry) => entry.value == f,
                                      orElse: () => const MapEntry("", ""),
                                    )
                                    .key;

                            final isMatched = matchedEnglish.isNotEmpty;
                            final isCorrect =
                                isMatched &&
                                state.originalWords.any(
                                  (pair) => pair.english == matchedEnglish && pair.french == f,
                                );

                            return WordTitleTargetWidget(
                              frenchWord: f,
                              matchedEnglish: isMatched ? matchedEnglish : null,
                              isCorrect: isCorrect,
                              onAccept: (english) {
                                bloc.add(WordMatched(WordPair(english: english, french: f)));
                              },
                            );
                          }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
