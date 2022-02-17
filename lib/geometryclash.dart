import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class GeometryClash extends FlameGame {
  @override
  Future<void>? onLoad() async {
    // await Flame.device.fullScreen();
    // await Flame.device.setLandscape();

    // camera.viewport = FixedResolutionViewport(
    //   Vector2(640, 330),
    // );

    final level = await TiledComponent.load(
      'map.tmx',
      Vector2.all(32),
    );
    add(level);

    return super.onLoad();
  }
}
