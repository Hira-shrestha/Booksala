// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:library_store/auth/login/data/graphql/__generated__/login_repository.data.gql.dart'
    show GLoginData, GLoginData_login, GLoginData_login_data;
import 'package:library_store/auth/login/data/graphql/__generated__/login_repository.req.gql.dart'
    show GLoginReq;
import 'package:library_store/auth/login/data/graphql/__generated__/login_repository.var.gql.dart'
    show GLoginVars;
import 'package:library_store/auth/signup/data/graphql/__generated__/auth.data.gql.dart'
    show
        GBooksData,
        GBooksData_books,
        GBooksData_books_data,
        GCreateUserData,
        GCreateUserData_createUser,
        GCreateUserData_createUser_data,
        GUploadImageData;
import 'package:library_store/auth/signup/data/graphql/__generated__/auth.req.gql.dart'
    show GBooksReq, GCreateUserReq, GUploadImageReq;
import 'package:library_store/auth/signup/data/graphql/__generated__/auth.var.gql.dart'
    show GBooksVars, GCreateUserVars, GUploadImageVars;
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    show
        GCreateBookInput,
        GCreateUserInput,
        GDateTime,
        GGetAllBookInput,
        GUpdateBookInput,
        GUpdateUserInput,
        GUpload;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GBooksData,
  GBooksData_books,
  GBooksData_books_data,
  GBooksReq,
  GBooksVars,
  GCreateBookInput,
  GCreateUserData,
  GCreateUserData_createUser,
  GCreateUserData_createUser_data,
  GCreateUserInput,
  GCreateUserReq,
  GCreateUserVars,
  GDateTime,
  GGetAllBookInput,
  GLoginData,
  GLoginData_login,
  GLoginData_login_data,
  GLoginReq,
  GLoginVars,
  GUpdateBookInput,
  GUpdateUserInput,
  GUpload,
  GUploadImageData,
  GUploadImageReq,
  GUploadImageVars,
])
final Serializers serializers = _serializersBuilder.build();
