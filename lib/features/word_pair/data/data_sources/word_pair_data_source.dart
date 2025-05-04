import 'package:injectable/injectable.dart';

import '../../../../core/network/dio_request.dart';
import '../dto/dto.dart';

abstract class WordPairDataSource {
  Future<List<WordPairDto>> fetchWordPairs();
}

@LazySingleton(as: WordPairDataSource)
class WordPairDataSourceImpl implements WordPairDataSource {
  WordPairDataSourceImpl({required DioRequest dioRequest}) : _dioRequest = dioRequest;

  //This is a mock data source that simulates network requests.
  // In a real application, you would use DioRequest to make actual network requests.

  // ignore: unused_field
  final DioRequest _dioRequest;

  @override
  Future<List<WordPairDto>> fetchWordPairs() async {
    await Future.delayed(Duration(seconds: 2));

    // Simulate a network request and return a list of WordPairDto objects
    return [
      WordPairDto(english: 'bicycle', french: 'vélo'),
      WordPairDto(english: 'railroad', french: 'chemin de fer'),
      WordPairDto(english: 'folder', french: 'dossier'),
      WordPairDto(english: 'butter', french: 'beurre'),
      WordPairDto(english: 'cereal', french: 'céréale'),
      WordPairDto(english: 'hungry', french: 'faim'),
      WordPairDto(english: 'forest', french: 'forêt'),
      WordPairDto(english: 'camel', french: 'chameau'),
      WordPairDto(english: 'weekly', french: 'hebdomadaire'),
      WordPairDto(english: 'desk', french: 'bureau'),
      WordPairDto(english: 'sibling', french: 'frère et sœur'),
      WordPairDto(english: 'limestone', french: 'calcaire'),
    ];
  }
}
