import 'package:get_it/get_it.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/graphql/client.dart';
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.req.gql.dart';

class MyBooksRepo {
  final NetworkClient networkClient = GetIt.I<NetworkClient>();

  Future<BookList> fetchMyBooks(int page, int limit) async {
    final query = GGetBookByAuthorReq((b) => b
      ..vars.getMyBookInput.page = page
      ..vars.getMyBookInput.limit = limit);
    try {
      final res = await networkClient.client.request(query).first;

      if (res.hasErrors) {
        throw Exception("graphql error: ${res.graphqlErrors}");
      }

      if (res.data != null) {
        return BookList.getBookByAuthor(res.data!.getBookByAuthor);
      } else {
        throw Exception("null data ");
      }
    } catch (e) {
      throw Exception("unknown erro $e");
    }
  } // fetchMyBooks

  // Future<BookList> searchMyBooks(int page, int limit) async {

  // }
}
