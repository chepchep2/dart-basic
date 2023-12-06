import 'package:dart_basic/23_12_06/starcraft/interface/army_unionable.dart';
import 'package:dart_basic/23_12_06/starcraft/zerg/interface/zerg.dart';

abstract class ZergUnit implements Zerg, ArmyUnionable {
  int hp;

  ZergUnit({required this.hp});
}
