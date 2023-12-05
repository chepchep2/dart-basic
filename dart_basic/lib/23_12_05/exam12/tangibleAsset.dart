import 'package:dart_basic/23_12_05/exam12/asset.dart';
import 'package:dart_basic/23_12_05/exam12/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  TangibleAsset({
    required super.name,
    required super.price,
    required super.color,
  });
}
