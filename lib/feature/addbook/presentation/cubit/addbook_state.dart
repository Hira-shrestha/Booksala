import 'package:library_store/feature/books/book.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/core/models/createbook_model.dart';

class AddbookState {
  final AppState status;
  final CreateBook? book;
  final Book? newbook;

  AddbookState({this.status = AppState.initial, this.book, this.newbook});

  AddbookState copyWith({AppState? status, CreateBook? book, Book? newbook}) {
    return AddbookState(
      status: status ?? this.status,
      book: book ?? this.book,
      newbook: newbook ?? this.newbook,
    );
  }
}
