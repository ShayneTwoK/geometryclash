import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:geometryclash/geometryclash.dart';

void main() {
  runApp(const MyApp());
}

// A single instance to avoid creation of
// multiple instances in every build.
final _game = GeometryClash();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: GameWidget(
          game: kDebugMode ? GeometryClash() : _game,
        ),
      ),
    );
  }
}
