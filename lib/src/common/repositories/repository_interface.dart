import 'package:pokedex_flutter_app/src/common/models/pokemon_model.dart';

abstract class IRepository {
  Future<List<PokemonModel>> getAllPokemons();
}
