import 'package:injectable/injectable.dart';

import '../entities/entities.dart';

@Injectable()
class CheckMatchesUseCase {

  const CheckMatchesUseCase();

  /// Returns true if the selected French word matches the current English–French pair.
  bool execute({required WordPair currentPair, required String selectedFrench}) =>
      currentPair.french == selectedFrench;
}
