import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/interface/terran_unit.dart';

abstract class Mechanic extends TerranUnit {
  int hp;

  Mechanic({required this.hp});
}
