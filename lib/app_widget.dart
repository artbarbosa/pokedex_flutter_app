import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter_app/src/common/repositories/pokemon_repository_imp.dart';
import 'package:pokedex_flutter_app/src/features/pokedex/routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepositoryImp(dio: Dio()),
      ),
    );
  }
}
