import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flutter/services.dart';
import 'package:geometryclash/geometryclash.dart';

void main() {
  runApp(const MyApp());
}

final _game = GeometryClash();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: GameWidget(
          game: _game,
          ),
        ),
    );
  }
}

