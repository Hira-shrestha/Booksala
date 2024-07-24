import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class MyBooksState {
  final AppState status;
  final BookList? books;

  MyBooksState({this.status = AppState.initial, this.books});

  MyBooksState copyWith({AppState? status, BookList? books}) {
    return MyBooksState(
      status: status ?? this.status,
      books: books ?? this.books,
    );
  }
}
