// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'book_list.data.gql.g.dart';

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
  GBooksData_books_data_author get author;
  String get bookId;
  String get bookName;
  DateTime get createdAt;
  String get description;
  String get genre;
  String get image;
  double get price;
  String get publishedDate;
  DateTime get updatedAt;
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

abstract class GBooksData_books_data_author
    implements
        Built<GBooksData_books_data_author,
            GBooksData_books_data_authorBuilder> {
  GBooksData_books_data_author._();

  factory GBooksData_books_data_author(
          [void Function(GBooksData_books_data_authorBuilder b) updates]) =
      _$GBooksData_books_data_author;

  static void _initializeBuilder(GBooksData_books_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GBooksData_books_data_author> get serializer =>
      _$gBooksDataBooksDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GBooksData_books_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksData_books_data_author? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GBooksData_books_data_author.serializer,
        json,
      );
}
