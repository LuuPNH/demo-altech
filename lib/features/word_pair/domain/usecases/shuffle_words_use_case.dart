import 'package:injectable/injectable.dart';

import '../repositories/word_pair_repository.dart';

@Injectable()
class ShuffleWordsUseCase {
  final WordPairRepository repository;

  const ShuffleWordsUseCase(this.repository);

  Future<Map<String, List<String>>> call() async {
    final pairs = await repository.getWordPairs();
    final english = pairs.map((e) => e.english).toList()..shuffle();
    final french = pairs.map((e) => e.french).toList()..shuffle();
    return {'english': english, 'french': french};
  }
}
