// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'delete_book.data.gql.g.dart';

abstract class GRemoveBookData
    implements Built<GRemoveBookData, GRemoveBookDataBuilder> {
  GRemoveBookData._();

  factory GRemoveBookData([void Function(GRemoveBookDataBuilder b) updates]) =
      _$GRemoveBookData;

  static void _initializeBuilder(GRemoveBookDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GRemoveBookData_removeBook get removeBook;
  static Serializer<GRemoveBookData> get serializer =>
      _$gRemoveBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveBookData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveBookData.serializer,
        json,
      );
}

abstract class GRemoveBookData_removeBook
    implements
        Built<GRemoveBookData_removeBook, GRemoveBookData_removeBookBuilder> {
  GRemoveBookData_removeBook._();

  factory GRemoveBookData_removeBook(
          [void Function(GRemoveBookData_removeBookBuilder b) updates]) =
      _$GRemoveBookData_removeBook;

  static void _initializeBuilder(GRemoveBookData_removeBookBuilder b) =>
      b..G__typename = 'BookResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  GRemoveBookData_removeBook_data get data;
  static Serializer<GRemoveBookData_removeBook> get serializer =>
      _$gRemoveBookDataRemoveBookSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveBookData_removeBook.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookData_removeBook? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveBookData_removeBook.serializer,
        json,
      );
}

abstract class GRemoveBookData_removeBook_data
    implements
        Built<GRemoveBookData_removeBook_data,
            GRemoveBookData_removeBook_dataBuilder> {
  GRemoveBookData_removeBook_data._();

  factory GRemoveBookData_removeBook_data(
          [void Function(GRemoveBookData_removeBook_dataBuilder b) updates]) =
      _$GRemoveBookData_removeBook_data;

  static void _initializeBuilder(GRemoveBookData_removeBook_dataBuilder b) =>
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
  GRemoveBookData_removeBook_data_author get author;
  static Serializer<GRemoveBookData_removeBook_data> get serializer =>
      _$gRemoveBookDataRemoveBookDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveBookData_removeBook_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookData_removeBook_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveBookData_removeBook_data.serializer,
        json,
      );
}

abstract class GRemoveBookData_removeBook_data_author
    implements
        Built<GRemoveBookData_removeBook_data_author,
            GRemoveBookData_removeBook_data_authorBuilder> {
  GRemoveBookData_removeBook_data_author._();

  factory GRemoveBookData_removeBook_data_author(
      [void Function(GRemoveBookData_removeBook_data_authorBuilder b)
          updates]) = _$GRemoveBookData_removeBook_data_author;

  static void _initializeBuilder(
          GRemoveBookData_removeBook_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GRemoveBookData_removeBook_data_author> get serializer =>
      _$gRemoveBookDataRemoveBookDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveBookData_removeBook_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookData_removeBook_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveBookData_removeBook_data_author.serializer,
        json,
      );
}
