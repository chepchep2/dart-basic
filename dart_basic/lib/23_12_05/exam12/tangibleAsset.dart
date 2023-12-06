import 'package:dart_basic/23_12_05/exam12/asset.dart';
import 'package:dart_basic/23_12_05/exam12/thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  String color;
  // double _weight;
  @override
  double weight;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.color,
    // required double weight,
    required this.weight,
  });
  //  : _weight = weight;

  // @override
  // double get weight => _weight;

  // @override
  // set weight(double weight) {
  //   _weight = weight;
  // }
}
