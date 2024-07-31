import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/feature/books/book.dart';
import 'package:library_store/feature/books/data/repository/book_list_repo.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/feature/books/presentation/cubit/book_list_state.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class BookListCubit extends Cubit<BookListState> {
  final BookListRepo repo = BookListRepo();
  BookListCubit() : super(BookListState(status: AppState.initial)) {
    getAllBooksList(isInitialLoad: true);
  }

  int _currentPage = 1;
  bool _isLoadingMore = false;

  Future<void> resetState() async {
    emit(state.copyWith(status: AppState.initial));
  }

  void updatedGenerlist(List<Genre> genreList) async {
    emit(state.copyWith(genreList: genreList));
  }

  void getAllBooksList({bool isInitialLoad = false}) async {
    if (isInitialLoad) {
      _currentPage = 1;
      emit(state.copyWith(status: AppState.loading));
    } else {
      if (_isLoadingMore) return;
      _isLoadingMore = true;
      emit(state.copyWith(isLoadingMore: true));
    }

    try {
      final books = await repo.fetchBookList(_currentPage, 6);

      if (isInitialLoad) {
        emit(state.copyWith(status: AppState.success, books: books));
      } else {
        final currentBooks = state.books?.data ?? [];
        final updatedBooks = List<Book>.from(currentBooks)..addAll(books.data);

        // Create a new BookList object with the updated list
        final updatedBookList = BookList(
            page: _currentPage.toDouble(), data: updatedBooks, total: 0);
        emit(state.copyWith(
          status: AppState.success,
          books: updatedBookList,
          isLoadingMore: false,
        ));
        _isLoadingMore = false;
      }

      _currentPage++;
    } catch (e) {
      print('Error fetching book list: $e');
      emit(state.copyWith(
        status: AppState.failure,
        errorDescription: e.toString(),
        isLoadingMore: false,
      ));
      _isLoadingMore = false;
    }
  }

  @override
  Future<void> close() {
    _isLoadingMore = false; // Reset loading flag
    return super.close();
  }

  void searchBook(String searchText) async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final books = await repo.searchBooks(1, 5, searchText);
      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      print("error encountered: $e");
      emit(state.copyWith(
          status: AppState.failure, errorDescription: e.toString()));
    }
  }

  void filterBooks(List<Genre> genreList) async {
    emit(state.copyWith(status: AppState.loading));
    List<String> genreNames = genreList.map((genre) => genre.name).toList();
    // final genreString = genreList.isNotEmpty ? genreList[0].name : '';

    try {
      final books = await repo.filterBookList(1, 10, genreNames);
      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      print("error encountered $e");
      emit(state.copyWith(
          status: AppState.failure, errorDescription: e.toString()));
    }
  } // filterBook

  void deleteBook(String bookId) async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final res = await repo.removeBooks(bookId);

      // final books = await repo.fetchBookList(1, 20);

      emit(state.copyWith(status: AppState.success, bookId: res));
    } catch (e) {
      print("error $e");
      emit(state.copyWith(
          status: AppState.failure, errorDescription: e.toString()));
    }
  }

  void deleteRefresh(String bookId) async {
    if (state.books?.data != null) {
      final updatedBookListAfterDeletion =
          state.books!.data.where((book) => book.bookId != bookId).toList();
      final books = BookList(
          status: 0.0,
          message: "",
          page: 1,
          total: 20,
          data: updatedBookListAfterDeletion);

      emit(state.copyWith(books: books));
    }
  }
}
