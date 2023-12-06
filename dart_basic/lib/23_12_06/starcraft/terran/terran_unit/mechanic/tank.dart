import 'package:dart_basic/23_12_06/starcraft/interface/scv_repairable.dart';
import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/mechanic/interface/mechanic.dart';

class Tank extends Mechanic implements SCVRepairable {
  Tank({required super.hp});
}
