import 'package:built_collection/built_collection.dart';
import 'package:get_it/get_it.dart';
import 'package:library_store/core/enums/genre.dart';
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.req.gql.dart';
import 'package:library_store/feature/books/data/graphql/filter_books/__generated__/filter_books.req.gql.dart';
import 'package:library_store/feature/books/data/graphql/search_books/__generated__/search_books.req.gql.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/graphql/client.dart';
import '../graphql/get_all_book/__generated__/book_list.req.gql.dart';

class BookListRepo {
  final NetworkClient networkClient = GetIt.I<NetworkClient>();

  Future<BookList> fetchBookList(int page, int limit) async {
    try {
      // Create the query request
      final query = GBooksReq(
        (b) => b
          ..vars.getAllBookInput.limit = limit
          ..vars.getAllBookInput.page = page,
      );
      final res = await networkClient.client.request(query).first;

      if (res.hasErrors) {
        // Handle GraphQL errors
        throw Exception('GraphQL Error: ${res.graphqlErrors}');
      }

      if (res.data != null) {
        // Extract and return the BookList data
        return BookList.fromGBooksData(res.data!.books);
      } else {
        throw Exception('No data received');
      }
    } catch (e) {
      // Handle network or other errors
      throw Exception('Failed to fetch book list: $e');
    }
  }

  Future<BookList> searchBooks(int page, int limit, String searchText) async {
    final query = GSearchBookReq((b) => b
      ..vars.searchBook.page = page
      ..vars.searchBook.limit = limit
      ..vars.searchBook.searchTerm = searchText);

    try {
      final res = await networkClient.client.request(query).first;
      if (res.hasErrors) {
        throw Exception("graphql erro: ${res.graphqlErrors}");
      }
      if (res.data != null) {
        return BookList.fromGSearchBookData(res.data!.searchBook);
      } else {
        throw Exception("empty data");
      }
    } catch (e) {
      throw Exception("failed to fetch seach book list: $e");
    }
  }

  Future<BookList> filterBookList(
      int page, int limit, List<String> genre) async {
    final query = GFilterBookReq((b) => b
      ..vars.filterBook.page = page
      ..vars.filterBook.limit = limit
      ..vars.filterBook.genres = ListBuilder<String>(genre));

    try {
      final res = await networkClient.client.request(query).first;

      if (res.hasErrors) {
        throw Exception("graphqlError: ${res.graphqlErrors}");
      }
      if (res.data != null) {
        return BookList.fromGFilterBookData(res.data!.filterBook);
      } else {
        throw Exception("empty booklist");
      }
    } catch (e) {
      throw Exception("unable to fetch filter book list $e");
    }
  }

  Future<String> removeBooks(String bookId) async {
    final mutation = GRemoveBookReq((b) => b..vars.removeBookId = bookId);

    try {
      final res = await networkClient.client.request(mutation).first;
      if (res.hasErrors) {
        throw Exception("graphql Error: ${res.graphqlErrors}");
      }
      if (res.data != null) {
        return res.data!.removeBook.data.bookId;
      } else {
        throw Exception("error or empty data");
      }
    } catch (e) {
      throw Exception("error $e");
    }
  }
}
