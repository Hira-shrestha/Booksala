// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'filter_books.data.gql.g.dart';

abstract class GFilterBookData
    implements Built<GFilterBookData, GFilterBookDataBuilder> {
  GFilterBookData._();

  factory GFilterBookData([void Function(GFilterBookDataBuilder b) updates]) =
      _$GFilterBookData;

  static void _initializeBuilder(GFilterBookDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFilterBookData_filterBook get filterBook;
  static Serializer<GFilterBookData> get serializer =>
      _$gFilterBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterBookData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterBookData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterBookData.serializer,
        json,
      );
}

abstract class GFilterBookData_filterBook
    implements
        Built<GFilterBookData_filterBook, GFilterBookData_filterBookBuilder> {
  GFilterBookData_filterBook._();

  factory GFilterBookData_filterBook(
          [void Function(GFilterBookData_filterBookBuilder b) updates]) =
      _$GFilterBookData_filterBook;

  static void _initializeBuilder(GFilterBookData_filterBookBuilder b) =>
      b..G__typename = 'BookListResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  double get page;
  double get total;
  BuiltList<GFilterBookData_filterBook_data> get data;
  static Serializer<GFilterBookData_filterBook> get serializer =>
      _$gFilterBookDataFilterBookSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterBookData_filterBook.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterBookData_filterBook? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterBookData_filterBook.serializer,
        json,
      );
}

abstract class GFilterBookData_filterBook_data
    implements
        Built<GFilterBookData_filterBook_data,
            GFilterBookData_filterBook_dataBuilder> {
  GFilterBookData_filterBook_data._();

  factory GFilterBookData_filterBook_data(
          [void Function(GFilterBookData_filterBook_dataBuilder b) updates]) =
      _$GFilterBookData_filterBook_data;

  static void _initializeBuilder(GFilterBookData_filterBook_dataBuilder b) =>
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
  GFilterBookData_filterBook_data_author get author;
  static Serializer<GFilterBookData_filterBook_data> get serializer =>
      _$gFilterBookDataFilterBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterBookData_filterBook_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterBookData_filterBook_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterBookData_filterBook_data.serializer,
        json,
      );
}

abstract class GFilterBookData_filterBook_data_author
    implements
        Built<GFilterBookData_filterBook_data_author,
            GFilterBookData_filterBook_data_authorBuilder> {
  GFilterBookData_filterBook_data_author._();

  factory GFilterBookData_filterBook_data_author(
      [void Function(GFilterBookData_filterBook_data_authorBuilder b)
          updates]) = _$GFilterBookData_filterBook_data_author;

  static void _initializeBuilder(
          GFilterBookData_filterBook_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GFilterBookData_filterBook_data_author> get serializer =>
      _$gFilterBookDataFilterBookDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GFilterBookData_filterBook_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterBookData_filterBook_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GFilterBookData_filterBook_data_author.serializer,
        json,
      );
}
