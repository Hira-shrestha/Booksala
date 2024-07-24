import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/books/data/repository/book_list_repo.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/books/presentation/cubit/book_list_state.dart';
import 'package:library_store/core/enums/app_state.dart';

class BookListCubit extends Cubit<BookListState> {
  final BookListRepo repo = BookListRepo();
  BookListCubit() : super(BookListState(status: AppState.initial)) {
    getAllBooksList();
  }

  void getAllBooksList() async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final books = await repo.fetchBookList(1, 10);

      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      print('Error fetching book list: $e');
    }
  }

  void searchBook(String searchText) async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final books = await repo.searchBooks(1, 5, searchText);
      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      print("error encountered: $e");
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
    }
  } // filterBook

  void deleteBook(String bookId) async {
    emit(state.copyWith(status: AppState.loading));
    try {
      final status = await repo.removeBooks(bookId);
      if (status == 200) {
        final books = await repo.fetchBookList(1, 20);
        emit(state.copyWith(status: AppState.success, books: books));
      }
    } catch (e) {
      print("error $e");
    }
  }
}
