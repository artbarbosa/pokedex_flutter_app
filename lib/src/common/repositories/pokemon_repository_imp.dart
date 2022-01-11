import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedex_flutter_app/src/common/consts/api_consts.dart';
import 'package:pokedex_flutter_app/src/common/error/failure.dart';
import 'package:pokedex_flutter_app/src/common/models/pokemon_model.dart';
import 'package:pokedex_flutter_app/src/common/repositories/repository_interface.dart';

class PokemonRepositoryImp extends IRepository {
  PokemonRepositoryImp({required this.dio});

  final Dio dio;

  @override
  Future<List<PokemonModel>> getAllPokemons() async {
    try {
      final response = await dio.get(ApiConsts.allPokemonsApi);
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final list = json['pokemon'] as List<dynamic>;
      return list.map((e) => PokemonModel.fromMap(e)).toList();
    } catch (e) {
      throw Failure(message: 'Não foi possível carregar os dados');
    }
  }
}
