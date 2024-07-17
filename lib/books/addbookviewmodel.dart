import 'package:library_store/books/book.dart';

class AddbookViewModel {
  Future<void> addBook(Book book) async {
    //await supabase.from('Book').insert(book.toJson());
  }

  Future<void> updateBook(Book book) async {
    //  await supabase.from('Book').update(book.toJson()).eq('id', book.id ?? 1);
  }
}
