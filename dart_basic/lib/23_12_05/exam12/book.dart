import 'package:dart_basic/23_12_05/exam12/tangibleAsset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });
}
