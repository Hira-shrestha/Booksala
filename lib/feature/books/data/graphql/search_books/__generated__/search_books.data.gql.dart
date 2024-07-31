// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'search_books.data.gql.g.dart';

abstract class GSearchBookData
    implements Built<GSearchBookData, GSearchBookDataBuilder> {
  GSearchBookData._();

  factory GSearchBookData([void Function(GSearchBookDataBuilder b) updates]) =
      _$GSearchBookData;

  static void _initializeBuilder(GSearchBookDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSearchBookData_searchBook get searchBook;
  static Serializer<GSearchBookData> get serializer =>
      _$gSearchBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchBookData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchBookData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchBookData.serializer,
        json,
      );
}

abstract class GSearchBookData_searchBook
    implements
        Built<GSearchBookData_searchBook, GSearchBookData_searchBookBuilder> {
  GSearchBookData_searchBook._();

  factory GSearchBookData_searchBook(
          [void Function(GSearchBookData_searchBookBuilder b) updates]) =
      _$GSearchBookData_searchBook;

  static void _initializeBuilder(GSearchBookData_searchBookBuilder b) =>
      b..G__typename = 'BookListResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  double get page;
  double get total;
  BuiltList<GSearchBookData_searchBook_data> get data;
  static Serializer<GSearchBookData_searchBook> get serializer =>
      _$gSearchBookDataSearchBookSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchBookData_searchBook.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchBookData_searchBook? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchBookData_searchBook.serializer,
        json,
      );
}

abstract class GSearchBookData_searchBook_data
    implements
        Built<GSearchBookData_searchBook_data,
            GSearchBookData_searchBook_dataBuilder> {
  GSearchBookData_searchBook_data._();

  factory GSearchBookData_searchBook_data(
          [void Function(GSearchBookData_searchBook_dataBuilder b) updates]) =
      _$GSearchBookData_searchBook_data;

  static void _initializeBuilder(GSearchBookData_searchBook_dataBuilder b) =>
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
  DateTime get createdAt;
  DateTime get updatedAt;
  GSearchBookData_searchBook_data_author get author;
  static Serializer<GSearchBookData_searchBook_data> get serializer =>
      _$gSearchBookDataSearchBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchBookData_searchBook_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchBookData_searchBook_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchBookData_searchBook_data.serializer,
        json,
      );
}

abstract class GSearchBookData_searchBook_data_author
    implements
        Built<GSearchBookData_searchBook_data_author,
            GSearchBookData_searchBook_data_authorBuilder> {
  GSearchBookData_searchBook_data_author._();

  factory GSearchBookData_searchBook_data_author(
      [void Function(GSearchBookData_searchBook_data_authorBuilder b)
          updates]) = _$GSearchBookData_searchBook_data_author;

  static void _initializeBuilder(
          GSearchBookData_searchBook_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GSearchBookData_searchBook_data_author> get serializer =>
      _$gSearchBookDataSearchBookDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchBookData_searchBook_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchBookData_searchBook_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchBookData_searchBook_data_author.serializer,
        json,
      );
}
