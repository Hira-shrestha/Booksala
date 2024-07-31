import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/feature/books/data/repository/book_list_repo.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/feature/mybooks/data/repository/my_books_repo.dart';
import 'package:library_store/feature/mybooks/presentation/cubit/my_books_state.dart';

class MyBooksCubit extends Cubit<MyBooksState> {
  MyBooksCubit() : super(MyBooksState(status: AppState.initial)) {
    getMyBooks();
  }

  final MyBooksRepo repo = MyBooksRepo();
  final BookListRepo bookRepo = BookListRepo();

  Future<void> resetState() async {
    emit(state.copyWith(status: AppState.initial));
  }

  Future<void> updateMyBook(BookList book) async {
    // final currentBookList = List<Book>.from(state.books?.data ?? []);
    // currentBookList.add(book);
    // final books = BookList(
    //     status: 0, message: '', page: 1, total: 20, data: currentBookList);
    emit(state.copyWith(books: book));
  }

  void getMyBooks() async {
    emit(state.copyWith(status: AppState.loading));

    try {
      final books = await repo.fetchMyBooks(1, 20);
      emit(state.copyWith(status: AppState.success, books: books));
    } catch (e) {
      emit(state.copyWith(status: AppState.failure, error: e.toString()));
      print(e);
    }
  } // getMyBooks

  void searchBook(String searchText) async {
    final books = await bookRepo.searchBooks(1, 20, searchText);
    emit(state.copyWith(books: books));
  }

  void deleteBook(String bookId) async {
    final res = await bookRepo.removeBooks(bookId);
    if (state.books?.data != null) {
      final updatedBookListAfterDeletion =
          state.books!.data.where((book) => book.bookId != res).toList();
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
