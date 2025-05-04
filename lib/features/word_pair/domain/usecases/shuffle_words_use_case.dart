import 'package:injectable/injectable.dart';

import '../entities/entities.dart';
import '../repositories/word_pair_repository.dart';

@Injectable()
class ShuffleWordsUseCase {
  final WordPairRepository repository;

  const ShuffleWordsUseCase(this.repository);

  Future<List<WordPair>> call() async {
    final pairs = await repository.getWordPairs();
    return pairs;
  }
}
