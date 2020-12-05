class Book {
  final String title;
  final String author;

  Book(this.title, this.author);

  @override
  String toString() {
    return 'Book{title: $title, author: $author}';
  }
}
