import 'package:dart_basic/23_12_06/starcraft/protoss/interface/protoss.dart';

abstract class ProtossBuilding implements Protoss {
  int hp;
  int shield;

  ProtossBuilding({
    required this.hp,
    required this.shield,
  });
}
