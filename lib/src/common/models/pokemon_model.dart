import 'package:flutter/material.dart';
import 'package:pokedex_flutter_app/src/common/consts/app_consts.dart';

class PokemonModel {
  final String name;
  final List<String> type;
  final int id;
  final String num;

  factory PokemonModel.fromMap(Map<String, dynamic> json) {
    return PokemonModel(
      name: json['name'],
      id: json['id'],
      num: json['num'],
      type: (json['type'] as List<dynamic>)
          .map(
            (e) => e as String,
          )
          .toList(),
    );
  }

  Color? get baseColor => ConstsApp.getColorType(type: type[0]);

  String get image =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';
  PokemonModel({
    required this.name,
    required this.type,
    required this.id,
    required this.num,
  });
}
