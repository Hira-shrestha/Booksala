// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'update_book.data.gql.g.dart';

abstract class GUpdateBookData
    implements Built<GUpdateBookData, GUpdateBookDataBuilder> {
  GUpdateBookData._();

  factory GUpdateBookData([void Function(GUpdateBookDataBuilder b) updates]) =
      _$GUpdateBookData;

  static void _initializeBuilder(GUpdateBookDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdateBookData_updateBook get updateBook;
  static Serializer<GUpdateBookData> get serializer =>
      _$gUpdateBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateBookData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateBookData.serializer,
        json,
      );
}

abstract class GUpdateBookData_updateBook
    implements
        Built<GUpdateBookData_updateBook, GUpdateBookData_updateBookBuilder> {
  GUpdateBookData_updateBook._();

  factory GUpdateBookData_updateBook(
          [void Function(GUpdateBookData_updateBookBuilder b) updates]) =
      _$GUpdateBookData_updateBook;

  static void _initializeBuilder(GUpdateBookData_updateBookBuilder b) =>
      b..G__typename = 'BookResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GUpdateBookData_updateBook_data get data;
  static Serializer<GUpdateBookData_updateBook> get serializer =>
      _$gUpdateBookDataUpdateBookSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateBookData_updateBook.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookData_updateBook? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateBookData_updateBook.serializer,
        json,
      );
}

abstract class GUpdateBookData_updateBook_data
    implements
        Built<GUpdateBookData_updateBook_data,
            GUpdateBookData_updateBook_dataBuilder> {
  GUpdateBookData_updateBook_data._();

  factory GUpdateBookData_updateBook_data(
          [void Function(GUpdateBookData_updateBook_dataBuilder b) updates]) =
      _$GUpdateBookData_updateBook_data;

  static void _initializeBuilder(GUpdateBookData_updateBook_dataBuilder b) =>
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
  GUpdateBookData_updateBook_data_author get author;
  static Serializer<GUpdateBookData_updateBook_data> get serializer =>
      _$gUpdateBookDataUpdateBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateBookData_updateBook_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookData_updateBook_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateBookData_updateBook_data.serializer,
        json,
      );
}

abstract class GUpdateBookData_updateBook_data_author
    implements
        Built<GUpdateBookData_updateBook_data_author,
            GUpdateBookData_updateBook_data_authorBuilder> {
  GUpdateBookData_updateBook_data_author._();

  factory GUpdateBookData_updateBook_data_author(
      [void Function(GUpdateBookData_updateBook_data_authorBuilder b)
          updates]) = _$GUpdateBookData_updateBook_data_author;

  static void _initializeBuilder(
          GUpdateBookData_updateBook_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GUpdateBookData_updateBook_data_author> get serializer =>
      _$gUpdateBookDataUpdateBookDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateBookData_updateBook_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookData_updateBook_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateBookData_updateBook_data_author.serializer,
        json,
      );
}
