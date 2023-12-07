// ignore_for_file: public_member_api_docs, sort_constructors_first
class Book2 {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book2({
    required this.title,
    required this.comment,
    required this.publishDate,
  });

  Book2 copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book2(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book2 &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;
  // ^ 이 표시가 XOR 이라고 하던데
  // true true이면 false
  // false false 이면 false
  // false true이면 true

  @override
  String toString() =>
      'Book2(title: $title, comment: $comment, publishDate: $publishDate)';
}

void main() {
  Book2 book1 =
      // Book2(
      //     title: 'The Silmarillion',
      //     comment: 'Middle-earth.',
      //     publishDate: DateTime.now());
      Book2(
          title: 'The Silmarillion',
          // title: '실마릴리온',
          comment: 'Middle-earth',
          publishDate: DateTime(2023, 12, 7));

  Book2 book2 =
      // Book2(
      //     title: 'The Silmarillion',
      //     comment: 'Middle-earth.',
      //     publishDate: DateTime.now());
      Book2(
          title: 'The Silmarillion',
          // title: '실마릴리온',
          comment: 'Middle-earth',
          publishDate: DateTime(2023, 12, 7));
  // DateTime.now()하면 동일하게 나오지 않는것 같음.

  print(book1 == book2);

  Book2 book3 = book1.copyWith(
      //     title: 'The Silmarillion',
      //     comment: 'Middle-earth.',
      //     publishDate: DateTime.now());
      title: 'The Silmarillion',
      // title: '실마릴리온',
      comment: 'Middle-earth',
      publishDate: DateTime(2023, 12, 7));

  print(book1 == book3);

  final Set<Book2> bookSet = {};
  bookSet.add(book1);
  bookSet.add(book2);
  print(bookSet);

  Book2 book4 = book1.copyWith(
      title: 'The Lord of the Rings',
      comment: 'The Fellowship of the Ring',
      publishDate: DateTime(2023, 12, 8));

  final List<Book2> bookList = [];
  bookList.add(book1);
  bookList.add(book2);
  bookList.add(book3);
  bookList.add(book4);
  print(bookList);

  bookList.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  print(bookList);
}
