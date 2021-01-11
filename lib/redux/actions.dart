import 'package:flutter/foundation.dart';
import 'package:nav20/book.dart';

@immutable
class BookSelectedAction {
  final Book book;

  BookSelectedAction(this.book);
}