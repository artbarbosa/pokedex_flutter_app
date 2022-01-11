import 'package:flutter/material.dart';
import 'package:pokedex_flutter_app/src/common/error/failure.dart';
import 'package:pokedex_flutter_app/src/common/models/pokemon_model.dart';
import 'package:pokedex_flutter_app/src/common/repositories/repository_interface.dart';
import 'package:pokedex_flutter_app/src/features/pokedex/screens/details/container/detail_container.dart';
import 'package:pokedex_flutter_app/src/features/pokedex/screens/home/pages/home_error.dart';
import 'package:pokedex_flutter_app/src/features/pokedex/screens/home/pages/home_loading.dart';
import 'package:pokedex_flutter_app/src/features/pokedex/screens/home/pages/home_page.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    Key? key,
    required this.repository,
    required this.onItemTap,
  }) : super(key: key);
  final IRepository repository;
  final Function(String, DetailArguments) onItemTap;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: repository.getAllPokemons(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const HomeLoading();
        }

        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return HomePage(
            list: snapshot.data!,
            onItemTap: onItemTap,
          );
        }

        if (snapshot.hasError) {
          return HomeError(
            error: (snapshot.error as Failure).message,
          );
        }

        return Container();
      },
    );
  }
}
