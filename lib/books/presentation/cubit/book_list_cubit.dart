import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/books/data/repository/book_list_repo.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/books/presentation/cubit/book_list_state.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';

class BookListCubit extends Cubit<BookListState> {
  final BookListRepo repo = BookListRepo();
  BookListCubit() : super(BookListState(status: AppState.initial)) {
    getAllBooksList();
  }

  Future<void> resetState() async {
    emit(state.copyWith(status: AppState.initial));
  }

  void updatedGenerlist(List<Genre> genreList) async {
    emit(state.copyWith(genreList: genreList));
  }

  void getAllBooksList() async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final books = await repo.fetchBookList(1, 10);

      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      print('Error fetching book list: $e');
      emit(state.copyWith(
          status: AppState.failure, errorDescription: e.toString()));
    }
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
    final genreString = genreList.isNotEmpty ? genreList[0].name : '';

    try {
      final books = await repo.filterBookList(1, 5, genreString);
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
