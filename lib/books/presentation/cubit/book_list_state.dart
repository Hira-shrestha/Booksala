import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class BookListState {
  final AppState status;
  final BookList? books;
  final bool isLoading;
  final List<Genre> genreList;
  final String errorDescription;
  final String bookId;
  final bool filterApplied;

  BookListState(
      {this.status = AppState.initial,
      this.books,
      this.isLoading = false,
      this.genreList = const [],
      this.errorDescription = '',
      this.bookId = '',
      this.filterApplied = false});

  BookListState copyWith({
    AppState? status,
    BookList? books,
    bool? isLoading,
    List<Genre>? genreList,
    String? errorDescription,
    String? bookId,
    bool? filterApplied,
  }) {
    return BookListState(
        status: status ?? this.status,
        books: books ?? this.books,
        isLoading: isLoading ?? this.isLoading,
        genreList: genreList ?? this.genreList,
        errorDescription: errorDescription ?? this.errorDescription,
        bookId: bookId ?? this.bookId,
        filterApplied: filterApplied ?? this.filterApplied);
  }
}
