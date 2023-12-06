import 'package:dart_basic/23_12_06/starcraft/interface/army_unionable.dart';
import 'package:dart_basic/23_12_06/starcraft/protoss/interface/protoss.dart';

abstract class ProtossUnit implements Protoss, ArmyUnionable {
  int hp;
  int shield;

  ProtossUnit({
    required this.hp,
    required this.shield,
  });
}
