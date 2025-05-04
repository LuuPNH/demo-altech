import 'package:demo_app/app/base_bloc/base_blocs.dart';
import 'package:demo_app/features/word_pair/presentation/bloc/word_pair_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordPairPage extends StatefulWidget {
  const WordPairPage({super.key});

  @override
  State<WordPairPage> createState() => _WordPairPageState();
}

class _WordPairPageState extends BaseWidget<WordPairBloc, WordPairPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WordPairBloc>(
      create: (context) => bloc,
      child: BlocBuilder<WordPairBloc, WordPairState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Scaffold(body: Placeholder()),
          );
        },
      ),
    );
  }
}
