import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/mybooks/data/repository/my_books_repo.dart';
import 'package:library_store/mybooks/presentation/cubit/my_books_state.dart';

class MyBooksCubit extends Cubit<MyBooksState> {
  MyBooksCubit() : super(MyBooksState(status: AppState.initial)) {
    getMyBooks();
  }

  final MyBooksRepo repo = MyBooksRepo();

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
      emit(state.copyWith(status: AppState.failure));
      print(e);
    }
  } // getMyBooks

  void searchBook(String searchText) async {}
}
