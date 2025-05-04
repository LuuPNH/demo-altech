import '../../domain/entities/entities.dart';

class WordPairDto {
  final String english;
  final String french;

  WordPairDto({required this.english, required this.french});

  factory WordPairDto.fromJson(Map<String, dynamic> json) {
    return WordPairDto(english: json['english'] as String, french: json['french'] as String);
  }

  Map<String, dynamic> toJson() {
    return {'english': english, 'french': french};
  }

  WordPair toEntity() => WordPair(english: english, french: french);

  factory WordPairDto.fromEntity(WordPair entity) =>
      WordPairDto(english: entity.english, french: entity.french);
}
