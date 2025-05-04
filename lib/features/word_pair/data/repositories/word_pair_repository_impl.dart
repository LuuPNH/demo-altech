import 'package:injectable/injectable.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/word_pair_repository.dart';
import '../data_sources/word_pair_data_source.dart';

@LazySingleton(as: WordPairRepository)
class WordPairRepositoryImpl extends WordPairRepository {
  final WordPairDataSource _dataSource;
  
  WordPairRepositoryImpl(this._dataSource);

  @override
  Future<List<WordPair>> getWordPairs() async {
    final res = await _dataSource.fetchWordPairs();
    return res.map((dto) => WordPair(english: dto.english, french: dto.french)).toList();
  }
}
