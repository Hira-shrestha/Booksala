// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i2;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'auth.data.gql.g.dart';

abstract class GCreateUserData
    implements Built<GCreateUserData, GCreateUserDataBuilder> {
  GCreateUserData._();

  factory GCreateUserData([void Function(GCreateUserDataBuilder b) updates]) =
      _$GCreateUserData;

  static void _initializeBuilder(GCreateUserDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateUserData_createUser get createUser;
  static Serializer<GCreateUserData> get serializer =>
      _$gCreateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser
    implements
        Built<GCreateUserData_createUser, GCreateUserData_createUserBuilder> {
  GCreateUserData_createUser._();

  factory GCreateUserData_createUser(
          [void Function(GCreateUserData_createUserBuilder b) updates]) =
      _$GCreateUserData_createUser;

  static void _initializeBuilder(GCreateUserData_createUserBuilder b) =>
      b..G__typename = 'CreateUserResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GCreateUserData_createUser_data get data;
  static Serializer<GCreateUserData_createUser> get serializer =>
      _$gCreateUserDataCreateUserSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData_createUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser.serializer,
        json,
      );
}

abstract class GCreateUserData_createUser_data
    implements
        Built<GCreateUserData_createUser_data,
            GCreateUserData_createUser_dataBuilder> {
  GCreateUserData_createUser_data._();

  factory GCreateUserData_createUser_data(
          [void Function(GCreateUserData_createUser_dataBuilder b) updates]) =
      _$GCreateUserData_createUser_data;

  static void _initializeBuilder(GCreateUserData_createUser_dataBuilder b) =>
      b..G__typename = 'UserModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  String get email;
  String? get image;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  static Serializer<GCreateUserData_createUser_data> get serializer =>
      _$gCreateUserDataCreateUserDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserData_createUser_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserData_createUser_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserData_createUser_data.serializer,
        json,
      );
}

abstract class GBooksData implements Built<GBooksData, GBooksDataBuilder> {
  GBooksData._();

  factory GBooksData([void Function(GBooksDataBuilder b) updates]) =
      _$GBooksData;

  static void _initializeBuilder(GBooksDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GBooksData_books get books;
  static Serializer<GBooksData> get serializer => _$gBooksDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBooksData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBooksData.serializer,
        json,
      );
}

abstract class GBooksData_books
    implements Built<GBooksData_books, GBooksData_booksBuilder> {
  GBooksData_books._();

  factory GBooksData_books([void Function(GBooksData_booksBuilder b) updates]) =
      _$GBooksData_books;

  static void _initializeBuilder(GBooksData_booksBuilder b) =>
      b..G__typename = 'BookListResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  double get page;
  double get total;
  BuiltList<GBooksData_books_data> get data;
  static Serializer<GBooksData_books> get serializer =>
      _$gBooksDataBooksSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBooksData_books.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksData_books? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBooksData_books.serializer,
        json,
      );
}

abstract class GBooksData_books_data
    implements Built<GBooksData_books_data, GBooksData_books_dataBuilder> {
  GBooksData_books_data._();

  factory GBooksData_books_data(
          [void Function(GBooksData_books_dataBuilder b) updates]) =
      _$GBooksData_books_data;

  static void _initializeBuilder(GBooksData_books_dataBuilder b) =>
      b..G__typename = 'BookModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get bookId;
  String get bookName;
  String get publishedDate;
  String get description;
  double get price;
  String get genre;
  String get image;
  _i2.GDateTime get createdAt;
  _i2.GDateTime get updatedAt;
  static Serializer<GBooksData_books_data> get serializer =>
      _$gBooksDataBooksDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBooksData_books_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksData_books_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBooksData_books_data.serializer,
        json,
      );
}

abstract class GUploadImageData
    implements Built<GUploadImageData, GUploadImageDataBuilder> {
  GUploadImageData._();

  factory GUploadImageData([void Function(GUploadImageDataBuilder b) updates]) =
      _$GUploadImageData;

  static void _initializeBuilder(GUploadImageDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get uploadImage;
  static Serializer<GUploadImageData> get serializer =>
      _$gUploadImageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUploadImageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadImageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUploadImageData.serializer,
        json,
      );
}
