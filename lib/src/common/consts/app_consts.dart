import 'package:flutter/material.dart';

class ConstsApp {
  static const String whitePokeball = 'assets/images/pokeball.png';
  static const String blackPokeball = 'assets/images/pokeball_dark.png';

  static Color? getColorType({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown.shade400;
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyanAccent.shade400;
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange.shade300;
      case 'Flying':
        return Colors.indigo.shade200;
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen.shade500;
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo.shade400;
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo.shade800;
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent.shade100;
      default:
        return Colors.grey;
    }
  }
}
