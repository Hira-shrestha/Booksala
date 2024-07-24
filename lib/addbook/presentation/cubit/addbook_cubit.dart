import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/addbook/data/repository/addbook_repo.dart';
import 'package:library_store/addbook/presentation/cubit/addbook_state.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/createbook_model.dart';

class AddbookCubit extends Cubit<AddbookState> {
  AddbookCubit() : super(AddbookState(status: AppState.initial));

  final AddbookRepo repo = AddbookRepo();

  void addBook(CreateBook book) async {
    emit(state.copyWith(status: AppState.loading));

    try {
      final newbook = await repo.createBook(book);
      emit(state.copyWith(status: AppState.success, newbook: newbook));
    } catch (e) {
      print(e);
    }
  }

  void updateBook(String bookId, CreateBook book) async {
    emit(state.copyWith(status: AppState.loading));

    try {
      final statuscode = await repo.updateBook(bookId, book);
      if (statuscode == 200) {
        emit(state.copyWith(status: AppState.success));
      }
    } catch (e) {
      print(e);
    }
  }
}
