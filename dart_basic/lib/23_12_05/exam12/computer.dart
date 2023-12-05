import 'package:dart_basic/23_12_05/exam12/tangibleAsset.dart';

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required String name,
    required int price,
    required String color,
    required this.makerName,
    required double weight,
  }) : super(name: name, price: price, color: color, weight: weight);
}
