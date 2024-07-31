// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'create_book.data.gql.g.dart';

abstract class GCreateBookData
    implements Built<GCreateBookData, GCreateBookDataBuilder> {
  GCreateBookData._();

  factory GCreateBookData([void Function(GCreateBookDataBuilder b) updates]) =
      _$GCreateBookData;

  static void _initializeBuilder(GCreateBookDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateBookData_createBook get createBook;
  static Serializer<GCreateBookData> get serializer =>
      _$gCreateBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBookData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBookData.serializer,
        json,
      );
}

abstract class GCreateBookData_createBook
    implements
        Built<GCreateBookData_createBook, GCreateBookData_createBookBuilder> {
  GCreateBookData_createBook._();

  factory GCreateBookData_createBook(
          [void Function(GCreateBookData_createBookBuilder b) updates]) =
      _$GCreateBookData_createBook;

  static void _initializeBuilder(GCreateBookData_createBookBuilder b) =>
      b..G__typename = 'BookResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GCreateBookData_createBook_data get data;
  static Serializer<GCreateBookData_createBook> get serializer =>
      _$gCreateBookDataCreateBookSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBookData_createBook.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookData_createBook? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBookData_createBook.serializer,
        json,
      );
}

abstract class GCreateBookData_createBook_data
    implements
        Built<GCreateBookData_createBook_data,
            GCreateBookData_createBook_dataBuilder> {
  GCreateBookData_createBook_data._();

  factory GCreateBookData_createBook_data(
          [void Function(GCreateBookData_createBook_dataBuilder b) updates]) =
      _$GCreateBookData_createBook_data;

  static void _initializeBuilder(GCreateBookData_createBook_dataBuilder b) =>
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
  GCreateBookData_createBook_data_author get author;
  static Serializer<GCreateBookData_createBook_data> get serializer =>
      _$gCreateBookDataCreateBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBookData_createBook_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookData_createBook_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBookData_createBook_data.serializer,
        json,
      );
}

abstract class GCreateBookData_createBook_data_author
    implements
        Built<GCreateBookData_createBook_data_author,
            GCreateBookData_createBook_data_authorBuilder> {
  GCreateBookData_createBook_data_author._();

  factory GCreateBookData_createBook_data_author(
      [void Function(GCreateBookData_createBook_data_authorBuilder b)
          updates]) = _$GCreateBookData_createBook_data_author;

  static void _initializeBuilder(
          GCreateBookData_createBook_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GCreateBookData_createBook_data_author> get serializer =>
      _$gCreateBookDataCreateBookDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateBookData_createBook_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookData_createBook_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateBookData_createBook_data_author.serializer,
        json,
      );
}
