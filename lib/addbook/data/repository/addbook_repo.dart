import 'package:get_it/get_it.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/update_book/data/graphql/__generated__/update_book.req.gql.dart';
import 'package:library_store/core/models/createbook_model.dart';
import 'package:library_store/graphql/client.dart';
import 'package:library_store/mybooks/data/graphql/createBook/__generated__/create_book.req.gql.dart';

class AddbookRepo {
  final NetworkClient networkClient = GetIt.I<NetworkClient>();

  Future<Book> createBook(CreateBook book) async {
    final mutation = GCreateBookReq((b) => b
      ..vars.createBookInput.bookName = book.bookName
      ..vars.createBookInput.description = book.description
      ..vars.createBookInput.genre = book.genre
      ..vars.createBookInput.image = book.image
      ..vars.createBookInput.publishedDate = book.publishedDate
      ..vars.createBookInput.price = book.price);

    try {
      final res = await networkClient.client.request(mutation).first;

      if (res.hasErrors) {
        throw Exception("graphql error: ${res.graphqlErrors}");
      }

      if (res.data != null) {
        return Book.createBook(res.data!.createBook.data);
      } else {
        throw Exception("null");
      }
    } catch (e) {
      throw ("unknow error $e");
    }
  }

  Future<double> updateBook(String bookId, CreateBook book) async {
    final mutation = GUpdateBookReq((b) => b
      ..vars.updateBookDto.bookName = book.bookName
      ..vars.updateBookDto.description = book.description
      ..vars.updateBookDto.price = book.price
      ..vars.updateBookDto.genre = book.genre
      ..vars.updateBookDto.publishedDate = book.publishedDate
      ..vars.updateBookDto.id = bookId);

    try {
      final res = await networkClient.client.request(mutation).first;

      if (res.hasErrors) {
        throw Exception("graphql Error: ${res.graphqlErrors}");
      }

      if (res.data?.updateBook.status == 200) {
        return res.data!.updateBook.status;
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
