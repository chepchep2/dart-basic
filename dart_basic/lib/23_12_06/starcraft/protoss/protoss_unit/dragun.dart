import 'package:dart_basic/23_12_06/starcraft/interface/scv_repairable.dart';
import 'package:dart_basic/23_12_06/starcraft/protoss/protoss_unit/interface/protoss_unit.dart';

class Dragun extends ProtossUnit implements SCVRepairable {
  Dragun({
    required super.hp,
    required super.shield,
  });
}
