import 'package:nav20/book.dart';

class AppState {
  final int selectedBook;

  AppState({
    this.selectedBook,
  });

  factory AppState.initial() => AppState(selectedBook: 0);

  AppState copyWith({
    Book selectedBook,
  }) =>
      AppState(
        selectedBook: selectedBook ?? this.selectedBook,
      );
}
