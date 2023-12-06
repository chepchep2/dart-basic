import 'package:dart_basic/23_12_06/starcraft/interface/medic_curable.dart';
import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/bionic/interface/bionic.dart';

class Medic extends Bionic implements MedicCurable {
  Medic({required super.hp});

  void heal(MedicCurable unit) {
    unit.hp += 10;
  }
}
