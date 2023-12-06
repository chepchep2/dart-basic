import 'package:dart_basic/23_12_06/starcraft/zerg/interface/zerg.dart';

abstract class ZergBuilding implements Zerg {
  int hp;

  ZergBuilding({required this.hp});
}
