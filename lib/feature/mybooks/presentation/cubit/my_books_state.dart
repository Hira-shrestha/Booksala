import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class MyBooksState {
  final AppState status;
  final BookList? books;
  final String error;

  MyBooksState({this.status = AppState.initial, this.books, this.error = ''});

  MyBooksState copyWith({AppState? status, BookList? books, String? error}) {
    return MyBooksState(
      status: status ?? this.status,
      books: books ?? this.books,
      error: error ?? this.error,
    );
  }
}
