import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.data.gql.dart';
import 'package:library_store/feature/books/data/graphql/filter_books/__generated__/filter_books.data.gql.dart';
import 'package:library_store/feature/books/data/graphql/get_all_book/__generated__/book_list.data.gql.dart';
import 'package:library_store/feature/books/data/graphql/search_books/__generated__/search_books.data.gql.dart';
import 'package:library_store/core/models/book_list_model.dart';
import 'package:library_store/feature/mybooks/data/graphql/createBook/__generated__/create_book.data.gql.dart';
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.data.gql.dart';

class Book {
  String bookId;
  String bookName;
  String publishedDate;
  String description;
  double price;
  String genre;
  DateTime createdAt;
  DateTime updatedAt;
  Author author;

  Book(
      {required this.bookId,
      required this.bookName,
      required this.publishedDate,
      required this.description,
      required this.price,
      required this.genre,
      required this.createdAt,
      required this.updatedAt,
      required this.author});

  factory Book.fromGBooksData(GBooksData_books_data bookData) {
    return Book(
      bookId: bookData.bookId,
      bookName: bookData.bookName,
      publishedDate: bookData.publishedDate,
      description: bookData.description,
      price: bookData.price,
      genre: bookData.genre,
      createdAt: bookData.createdAt,
      updatedAt: bookData.updatedAt,
      author: Author.fromGBooksDataAuthor(bookData.author),
    );
  }

  factory Book.fromGSearchBookData(GSearchBookData_searchBook_data bookData) {
    return Book(
        bookId: bookData.bookId,
        bookName: bookData.bookName,
        publishedDate: bookData.publishedDate,
        description: bookData.description,
        price: bookData.price,
        genre: bookData.genre,
        createdAt: bookData.createdAt,
        updatedAt: bookData.updatedAt,
        author: Author.fromGSearchBookData(bookData.author));
  }

  factory Book.fromGFilterBookData(GFilterBookData_filterBook_data bookData) {
    return Book(
        bookId: bookData.bookId,
        bookName: bookData.bookName,
        publishedDate: bookData.publishedDate,
        description: bookData.description,
        price: bookData.price,
        genre: bookData.genre,
        createdAt: bookData.createdAt,
        updatedAt: bookData.updatedAt,
        author: Author.fromGFilterBookData(bookData.author));
  }

  factory Book.getBookByAuthor(
      GGetBookByAuthorData_getBookByAuthor_data bookData) {
    return Book(
        bookId: bookData.bookId,
        bookName: bookData.bookName,
        publishedDate: bookData.publishedDate,
        description: bookData.description,
        price: bookData.price,
        genre: bookData.genre,
        createdAt: bookData.createdAt,
        updatedAt: bookData.updatedAt,
        author: Author.getBookByAuthor(bookData.author));
  }

  factory Book.removeBook(GRemoveBookData_removeBook_data bookData) {
    return Book(
        bookId: bookData.bookId,
        bookName: bookData.bookName,
        publishedDate: bookData.publishedDate,
        description: bookData.description,
        price: bookData.price,
        genre: bookData.genre,
        createdAt: bookData.createdAt,
        updatedAt: bookData.updatedAt,
        author: Author.removeBook(bookData.author));
  }

  factory Book.createBook(GCreateBookData_createBook_data bookData) {
    return Book(
        bookId: bookData.bookId,
        bookName: bookData.bookName,
        publishedDate: bookData.publishedDate,
        description: bookData.description,
        price: bookData.price,
        genre: bookData.genre,
        createdAt: bookData.createdAt,
        updatedAt: bookData.updatedAt,
        author: Author.createBook(bookData.author));
  }

  Map<String, dynamic> toJson() => {
        "bookId": bookId,
        "bookName": bookName,
        "publishedDate": publishedDate,
        "description": description,
        "price": price,
        "genre": genre,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "author": author.toJson()
      };
}
