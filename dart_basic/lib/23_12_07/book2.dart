// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;
  Book({
    required this.title,
    required this.comment,
    required this.publishDate,
  });
}

void main() {
  Book book1 = Book(
      title: 'book1',
      comment: 'book1입니다.',
      publishDate: DateTime(DateTime.august));

  Book book2 = Book(
      title: 'book1',
      comment: 'book1입니다.',
      publishDate: DateTime(DateTime.august));

  print(book1 == book2);
}
