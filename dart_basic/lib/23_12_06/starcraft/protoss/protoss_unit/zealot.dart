import 'package:dart_basic/23_12_06/starcraft/interface/medic_curable.dart';
import 'package:dart_basic/23_12_06/starcraft/protoss/protoss_unit/interface/protoss_unit.dart';

class Zealot extends ProtossUnit implements MedicCurable {
  Zealot({
    required super.hp,
    required super.shield,
  });
}
