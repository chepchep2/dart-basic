// void main() {
//   int num = '42'.parseInt();
//   print(num);
//   print(num.runtimeType);
// }

// extension NumberParsing on String {
//   int parseInt() {
//     return int.parse(this);
//   }
// }

import 'package:dart_basic/23_12_15/dto/mask_dto.dart';
import 'package:dart_basic/23_12_15/model/store.dart';

extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      name: name ?? '',
      address: addr ?? '주소 없음',
      stock: remainStat ?? 'null',
    );
  }
}
