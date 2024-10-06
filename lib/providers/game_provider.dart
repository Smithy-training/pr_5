import 'package:flutter/material.dart';
import '../models/game.dart';

class GameProvider with ChangeNotifier {
  List<Game> _games = [
    Game(
      id: '1',
      title: 'CupHead',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/ru/e/eb/Cuphead_%28artwork%29.png',
      price: 19.99,
      description: 'веселье',
    ),
    Game(id: "2", title: "Elden ring", imageUrl: "https://upload.wikimedia.org/wikipedia/ru/7/7c/Elden_Ring_-_cover.jpg", price: 69.99, description: "sOuls"),
  ];

  List<Game> get games => [..._games];

  List<Game> get favoriteGames =>
      _games.where((game) => game.isFavorite).toList();

  void addGame(Game game) {
    _games.add(game);
    notifyListeners();
  }

  void removeGame(String id) {
    _games.removeWhere((game) => game.id == id);
    notifyListeners();
  }

  void toggleFavorite(String id) {
    final index = _games.indexWhere((game) => game.id == id);
    if (index >= 0) {
      _games[index].isFavorite = !_games[index].isFavorite;
      notifyListeners();
    }
  }
}
