import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class GeometryClash extends FlameGame {

 @override
  Future<void> onLoad() async {
    final level = await TiledComponent.load(
      'map.tmx',
      Vector2.all(32),
    );
    add(level);

    return super.onLoad();
  }
}