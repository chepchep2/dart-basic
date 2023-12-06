import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/interface/terran_unit.dart';

abstract class Bionic extends TerranUnit {
  int hp;

  Bionic({required this.hp});
}
