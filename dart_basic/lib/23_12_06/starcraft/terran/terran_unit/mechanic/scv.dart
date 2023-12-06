import 'package:dart_basic/23_12_06/starcraft/interface/medic_curable.dart';
import 'package:dart_basic/23_12_06/starcraft/interface/scv_repairable.dart';
import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/mechanic/interface/mechanic.dart';

class SCV extends Mechanic implements SCVRepairable, MedicCurable {
  SCV({required super.hp});

  void repair(SCVRepairable unit) {
    unit.hp += 10;
  }

  double earn() {
    // todo
    return 0;
  }
}
