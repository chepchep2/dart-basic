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

  Book copyWith({
    String? title,
    String? comment,
    DateTime? publishDate,
  }) {
    return Book(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }

  @override
  bool operator ==(covariant Book other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.comment == comment &&
        other.publishDate == publishDate;
    // return other.title == title;
  }

  @override
  // int get hashCode => title.hashCode ^ comment.hashCode ^ publishDate.hashCode;
  // 책의 제목이 같으면 ok
  // 출간일이 같으면 같은 책으로 판단한다. ??
  // int get hashCode => title.hashCode;
  int get hashCode => title.hashCode ^ publishDate.hashCode;
  // ^ : XOR 연산자. 두 피연산자의 해당 비트가 서로 다를 때 1을 반환하고, 같을 때는 0을 반환한다.

  @override
  String toString() =>
      'Book(title: $title, comment: $comment, publishDate: $publishDate)';
}

void main() {
  Book book1 = Book(
      title: 'book1',
      comment: '이건 book1입니다.',
      publishDate: DateTime(DateTime.december));

  Book book2 = Book(
      title: 'book1',
      comment: '이건 book1의 2입니다.',
      publishDate: DateTime(DateTime.november));
  // Book book2 = book1.copyWith(
  //     title: 'book2',
  //     comment: '이건 book1의 2입니다.',
  //     publishDate: DateTime(DateTime.november));

  print(book1 == book2);

  Set<Book> bookSet = {};
  bookSet.add(book1);
  bookSet.add(book2);
  print(bookSet);
  // // book1.publishDate = DateTime(DateTime.december);
  // // book2.publishDate = DateTime(DateTime.november);
  // // print(book1.publishDate);
  // // print(book2.publishDate);
  // bookSet.add(book1);
  // bookSet.add(book2);
  // print(bookSet);

  // final List<Book> bookList = [];
  // bookList.add(book1);
  // bookList.add(book2);
  // print(bookList);
  // bookList.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  // print(bookList);
}
