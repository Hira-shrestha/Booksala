import 'package:flutter/foundation.dart';
import 'package:library_store/auth/signup/data/repository/authrepo.dart';
import 'package:library_store/books/book.dart';
import 'package:library_store/books/data/graphql/delete_books/__generated__/delete_book.data.gql.dart';
import 'package:library_store/books/data/graphql/filter_books/__generated__/filter_books.data.gql.dart';
import 'package:library_store/books/data/graphql/get_all_book/__generated__/book_list.data.gql.dart';
import 'package:library_store/books/data/graphql/search_books/__generated__/search_books.data.gql.dart';
import 'package:library_store/mybooks/data/graphql/createBook/__generated__/create_book.data.gql.dart';
import 'package:library_store/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.data.gql.dart';

class BookList {
  final double status;
  final String message;
  final double page;
  final double total;
  final List<Book> data;

  BookList({
    required this.status,
    required this.message,
    required this.page,
    required this.total,
    required this.data,
  });

  factory BookList.fromGBooksData(GBooksData_books gBooksData) {
    return BookList(
      status: gBooksData.status,
      message: gBooksData.message,
      page: gBooksData.page,
      total: gBooksData.total,
      data: gBooksData.data
          .map((bookData) => Book.fromGBooksData(bookData))
          .toList(),
    );
  }

  factory BookList.fromGSearchBookData(
      GSearchBookData_searchBook searchBookData) {
    return BookList(
      status: searchBookData.status,
      message: searchBookData.message,
      page: searchBookData.page,
      total: searchBookData.total,
      data: searchBookData.data
          .map((bookData) => Book.fromGSearchBookData(bookData))
          .toList(),
    );
  }

  factory BookList.fromGFilterBookData(GFilterBookData_filterBook bookData) {
    return BookList(
      status: bookData.status,
      message: bookData.message,
      page: bookData.page,
      total: bookData.total,
      data: bookData.data
          .map((bookData) => Book.fromGFilterBookData(bookData))
          .toList(),
    );
  }

  factory BookList.getBookByAuthor(
      GGetBookByAuthorData_getBookByAuthor bookData) {
    return BookList(
      status: bookData.status,
      message: bookData.message,
      page: bookData.page,
      total: bookData.total,
      data: bookData.data
          .map((bookData) => Book.getBookByAuthor(bookData))
          .toList(),
    );
  }

  factory BookList.removeBook(GRemoveBookData_removeBook bookData) {
    return BookList(
      status: bookData.status,
      message: bookData.message,
      page: 1,
      total: 5,
      data: bookData.data.map((bookData) => Book.removeBook(bookData)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'page': page,
      'total': total,
      'data': data.map((book) => book.toJson()).toList(),
    };
  }
}

class Author {
  String firstName;
  String lastName;
  String authorId;
  String authorImage;
  String email;

  Author(
      {required this.firstName,
      required this.lastName,
      required this.authorId,
      required this.authorImage,
      required this.email});

  factory Author.fromGBooksDataAuthor(GBooksData_books_data_author authorData) {
    return Author(
      firstName: authorData.firstName ?? "",
      lastName: authorData.lastName ?? "",
      authorId: authorData.authorId ?? "",
      authorImage: authorData.authorImage ?? "",
      email: authorData.email ?? "",
    );
  }

  factory Author.fromGSearchBookData(
      GSearchBookData_searchBook_data_author authorData) {
    return Author(
        firstName: authorData.firstName ?? " ",
        lastName: authorData.lastName ?? "",
        authorId: authorData.authorId ?? '',
        authorImage: authorData.authorImage ?? "",
        email: authorData.email ?? "");
  }

  factory Author.fromGFilterBookData(
      GFilterBookData_filterBook_data_author authorData) {
    return Author(
        firstName: authorData.firstName ?? " ",
        lastName: authorData.lastName ?? "",
        authorId: authorData.authorId ?? '',
        authorImage: authorData.authorImage ?? "",
        email: authorData.email ?? "");
  }

  factory Author.getBookByAuthor(
      GGetBookByAuthorData_getBookByAuthor_data_author authorData) {
    return Author(
        firstName: authorData.firstName ?? " ",
        lastName: authorData.lastName ?? "",
        authorId: authorData.authorId ?? '',
        authorImage: authorData.authorImage ?? "",
        email: authorData.email ?? "");
  }

  factory Author.removeBook(GRemoveBookData_removeBook_data_author authorData) {
    return Author(
        firstName: authorData.firstName ?? " ",
        lastName: authorData.lastName ?? "",
        authorId: authorData.authorId ?? '',
        authorImage: authorData.authorImage ?? "",
        email: authorData.email ?? "");
  }

  factory Author.createBook(GCreateBookData_createBook_data_author authorData) {
    return Author(
        firstName: authorData.firstName ?? " ",
        lastName: authorData.lastName ?? "",
        authorId: authorData.authorId ?? '',
        authorImage: authorData.authorImage ?? "",
        email: authorData.email ?? "");
  }

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "authorId": authorId,
        "authorImage": authorImage,
        "email": email,
      };
}
