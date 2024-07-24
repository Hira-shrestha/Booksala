import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class BookListState {
  final AppState status;
  final BookList? books;
  final bool isLoading;
  final List<Genre> generList;

  BookListState({
    this.status = AppState.initial,
    this.books,
    this.isLoading = false,
    this.generList = const [],
  });

  BookListState copyWith({
    AppState? status,
    BookList? books,
    bool? isLoading,
    List<Genre>? generList,
  }) {
    return BookListState(
      status: status ?? this.status,
      books: books ?? this.books,
      isLoading: isLoading ?? this.isLoading,
      generList: generList ?? this.generList,
    );
  }
}
