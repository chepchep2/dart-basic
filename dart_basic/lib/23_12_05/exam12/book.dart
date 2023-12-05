import 'package:dart_basic/23_12_05/exam12/tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required String name,
    required int price,
    required String color,
    required this.isbn,
    required double weight,
  }) : super(name: name, price: price, color: color, weight: weight);
}
