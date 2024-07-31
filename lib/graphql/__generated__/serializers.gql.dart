// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart'
    show Iso8601DateTimeSerializer;
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:library_store/feature/auth/login/data/graphql/__generated__/login_repository.data.gql.dart'
    show GLoginData, GLoginData_login, GLoginData_login_data;
import 'package:library_store/feature/auth/login/data/graphql/__generated__/login_repository.req.gql.dart'
    show GLoginReq;
import 'package:library_store/feature/auth/login/data/graphql/__generated__/login_repository.var.gql.dart'
    show GLoginVars;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.data.gql.dart'
    show
        GCreateUserData,
        GCreateUserData_createUser,
        GCreateUserData_createUser_data,
        GUploadImageData;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.req.gql.dart'
    show GCreateUserReq, GUploadImageReq;
import 'package:library_store/feature/auth/signup/data/graphql/__generated__/auth.var.gql.dart'
    show GCreateUserVars, GUploadImageVars;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.data.gql.dart'
    show
        GRemoveBookData,
        GRemoveBookData_removeBook,
        GRemoveBookData_removeBook_data,
        GRemoveBookData_removeBook_data_author;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.req.gql.dart'
    show GRemoveBookReq;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.var.gql.dart'
    show GRemoveBookVars;
import 'package:library_store/feature/books/data/graphql/filter_books/__generated__/filter_books.data.gql.dart'
    show
        GFilterBookData,
        GFilterBookData_filterBook,
        GFilterBookData_filterBook_data,
        GFilterBookData_filterBook_data_author;
import 'package:library_store/feature/books/data/graphql/filter_books/__generated__/filter_books.req.gql.dart'
    show GFilterBookReq;
import 'package:library_store/feature/books/data/graphql/filter_books/__generated__/filter_books.var.gql.dart'
    show GFilterBookVars;
import 'package:library_store/feature/books/data/graphql/get_all_book/__generated__/book_list.data.gql.dart'
    show
        GBooksData,
        GBooksData_books,
        GBooksData_books_data,
        GBooksData_books_data_author;
import 'package:library_store/feature/books/data/graphql/get_all_book/__generated__/book_list.req.gql.dart'
    show GBooksReq;
import 'package:library_store/feature/books/data/graphql/get_all_book/__generated__/book_list.var.gql.dart'
    show GBooksVars;
import 'package:library_store/feature/books/data/graphql/search_books/__generated__/search_books.data.gql.dart'
    show
        GSearchBookData,
        GSearchBookData_searchBook,
        GSearchBookData_searchBook_data,
        GSearchBookData_searchBook_data_author;
import 'package:library_store/feature/books/data/graphql/search_books/__generated__/search_books.req.gql.dart'
    show GSearchBookReq;
import 'package:library_store/feature/books/data/graphql/search_books/__generated__/search_books.var.gql.dart'
    show GSearchBookVars;
import 'package:library_store/feature/books/update_book/data/graphql/__generated__/update_book.data.gql.dart'
    show
        GUpdateBookData,
        GUpdateBookData_updateBook,
        GUpdateBookData_updateBook_data,
        GUpdateBookData_updateBook_data_author;
import 'package:library_store/feature/books/update_book/data/graphql/__generated__/update_book.req.gql.dart'
    show GUpdateBookReq;
import 'package:library_store/feature/books/update_book/data/graphql/__generated__/update_book.var.gql.dart'
    show GUpdateBookVars;
import 'package:library_store/feature/mybooks/data/graphql/createBook/__generated__/create_book.data.gql.dart'
    show
        GCreateBookData,
        GCreateBookData_createBook,
        GCreateBookData_createBook_data,
        GCreateBookData_createBook_data_author;
import 'package:library_store/feature/mybooks/data/graphql/createBook/__generated__/create_book.req.gql.dart'
    show GCreateBookReq;
import 'package:library_store/feature/mybooks/data/graphql/createBook/__generated__/create_book.var.gql.dart'
    show GCreateBookVars;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.data.gql.dart'
    show
        GGetBookByAuthorData,
        GGetBookByAuthorData_getBookByAuthor,
        GGetBookByAuthorData_getBookByAuthor_data,
        GGetBookByAuthorData_getBookByAuthor_data_author;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.req.gql.dart'
    show GGetBookByAuthorReq;
import 'package:library_store/feature/mybooks/data/graphql/getMyBooks/__generated__/get_my_books.var.gql.dart'
    show GGetBookByAuthorVars;
import 'package:library_store/feature/profile_wrapper/profile/data/graphql/__generated__/user_update.data.gql.dart'
    show
        GUpdateUserData,
        GUpdateUserData_updateUser,
        GUpdateUserData_updateUser_data;
import 'package:library_store/feature/profile_wrapper/profile/data/graphql/__generated__/user_update.req.gql.dart'
    show GUpdateUserReq;
import 'package:library_store/feature/profile_wrapper/profile/data/graphql/__generated__/user_update.var.gql.dart'
    show GUpdateUserVars;
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateBookInput,
        GCreateUserInput,
        GGetAllBookInput,
        GGetAllFilterBookInput,
        GGetAllSearchBookInput,
        GUpdateBookInput,
        GUpdateUserInput,
        GUpload;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(Iso8601DateTimeSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBooksData,
  GBooksData_books,
  GBooksData_books_data,
  GBooksData_books_data_author,
  GBooksReq,
  GBooksVars,
  GCreateBookData,
  GCreateBookData_createBook,
  GCreateBookData_createBook_data,
  GCreateBookData_createBook_data_author,
  GCreateBookInput,
  GCreateBookReq,
  GCreateBookVars,
  GCreateUserData,
  GCreateUserData_createUser,
  GCreateUserData_createUser_data,
  GCreateUserInput,
  GCreateUserReq,
  GCreateUserVars,
  GFilterBookData,
  GFilterBookData_filterBook,
  GFilterBookData_filterBook_data,
  GFilterBookData_filterBook_data_author,
  GFilterBookReq,
  GFilterBookVars,
  GGetAllBookInput,
  GGetAllFilterBookInput,
  GGetAllSearchBookInput,
  GGetBookByAuthorData,
  GGetBookByAuthorData_getBookByAuthor,
  GGetBookByAuthorData_getBookByAuthor_data,
  GGetBookByAuthorData_getBookByAuthor_data_author,
  GGetBookByAuthorReq,
  GGetBookByAuthorVars,
  GLoginData,
  GLoginData_login,
  GLoginData_login_data,
  GLoginReq,
  GLoginVars,
  GRemoveBookData,
  GRemoveBookData_removeBook,
  GRemoveBookData_removeBook_data,
  GRemoveBookData_removeBook_data_author,
  GRemoveBookReq,
  GRemoveBookVars,
  GSearchBookData,
  GSearchBookData_searchBook,
  GSearchBookData_searchBook_data,
  GSearchBookData_searchBook_data_author,
  GSearchBookReq,
  GSearchBookVars,
  GUpdateBookData,
  GUpdateBookData_updateBook,
  GUpdateBookData_updateBook_data,
  GUpdateBookData_updateBook_data_author,
  GUpdateBookInput,
  GUpdateBookReq,
  GUpdateBookVars,
  GUpdateUserData,
  GUpdateUserData_updateUser,
  GUpdateUserData_updateUser_data,
  GUpdateUserInput,
  GUpdateUserReq,
  GUpdateUserVars,
  GUpload,
  GUploadImageData,
  GUploadImageReq,
  GUploadImageVars,
])
final Serializers serializers = _serializersBuilder.build();
