import 'package:flutter/material.dart';

import 'book.dart';

class BooksListScreen extends StatelessWidget {
  final List<Book> books;
  final ValueChanged<int> onTapped;

  BooksListScreen({
    @required this.books,
    @required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: books
            .asMap()
            .map((index, book) => MapEntry(
                index,
                ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  onTap: () => onTapped(index),
                )))
            .values
            .toList(),
      ),
    );
  }
}
