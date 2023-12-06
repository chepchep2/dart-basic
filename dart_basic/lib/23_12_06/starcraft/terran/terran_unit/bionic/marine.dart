import 'package:dart_basic/23_12_06/starcraft/interface/medic_curable.dart';
import 'package:dart_basic/23_12_06/starcraft/terran/terran_unit/bionic/interface/bionic.dart';

class Marine extends Bionic implements MedicCurable {
  Marine({required super.hp});
}
