// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'get_my_books.data.gql.g.dart';

abstract class GGetBookByAuthorData
    implements Built<GGetBookByAuthorData, GGetBookByAuthorDataBuilder> {
  GGetBookByAuthorData._();

  factory GGetBookByAuthorData(
          [void Function(GGetBookByAuthorDataBuilder b) updates]) =
      _$GGetBookByAuthorData;

  static void _initializeBuilder(GGetBookByAuthorDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetBookByAuthorData_getBookByAuthor get getBookByAuthor;
  static Serializer<GGetBookByAuthorData> get serializer =>
      _$gGetBookByAuthorDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBookByAuthorData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBookByAuthorData.serializer,
        json,
      );
}

abstract class GGetBookByAuthorData_getBookByAuthor
    implements
        Built<GGetBookByAuthorData_getBookByAuthor,
            GGetBookByAuthorData_getBookByAuthorBuilder> {
  GGetBookByAuthorData_getBookByAuthor._();

  factory GGetBookByAuthorData_getBookByAuthor(
      [void Function(GGetBookByAuthorData_getBookByAuthorBuilder b)
          updates]) = _$GGetBookByAuthorData_getBookByAuthor;

  static void _initializeBuilder(
          GGetBookByAuthorData_getBookByAuthorBuilder b) =>
      b..G__typename = 'BookListResponse';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  double get status;
  String get message;
  double get page;
  double get total;
  BuiltList<GGetBookByAuthorData_getBookByAuthor_data> get data;
  static Serializer<GGetBookByAuthorData_getBookByAuthor> get serializer =>
      _$gGetBookByAuthorDataGetBookByAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBookByAuthorData_getBookByAuthor.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorData_getBookByAuthor? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBookByAuthorData_getBookByAuthor.serializer,
        json,
      );
}

abstract class GGetBookByAuthorData_getBookByAuthor_data
    implements
        Built<GGetBookByAuthorData_getBookByAuthor_data,
            GGetBookByAuthorData_getBookByAuthor_dataBuilder> {
  GGetBookByAuthorData_getBookByAuthor_data._();

  factory GGetBookByAuthorData_getBookByAuthor_data(
      [void Function(GGetBookByAuthorData_getBookByAuthor_dataBuilder b)
          updates]) = _$GGetBookByAuthorData_getBookByAuthor_data;

  static void _initializeBuilder(
          GGetBookByAuthorData_getBookByAuthor_dataBuilder b) =>
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
  GGetBookByAuthorData_getBookByAuthor_data_author get author;
  static Serializer<GGetBookByAuthorData_getBookByAuthor_data> get serializer =>
      _$gGetBookByAuthorDataGetBookByAuthorDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBookByAuthorData_getBookByAuthor_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorData_getBookByAuthor_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBookByAuthorData_getBookByAuthor_data.serializer,
        json,
      );
}

abstract class GGetBookByAuthorData_getBookByAuthor_data_author
    implements
        Built<GGetBookByAuthorData_getBookByAuthor_data_author,
            GGetBookByAuthorData_getBookByAuthor_data_authorBuilder> {
  GGetBookByAuthorData_getBookByAuthor_data_author._();

  factory GGetBookByAuthorData_getBookByAuthor_data_author(
      [void Function(GGetBookByAuthorData_getBookByAuthor_data_authorBuilder b)
          updates]) = _$GGetBookByAuthorData_getBookByAuthor_data_author;

  static void _initializeBuilder(
          GGetBookByAuthorData_getBookByAuthor_data_authorBuilder b) =>
      b..G__typename = 'Author';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get firstName;
  String? get lastName;
  String? get authorId;
  String? get authorImage;
  String? get email;
  static Serializer<GGetBookByAuthorData_getBookByAuthor_data_author>
      get serializer =>
          _$gGetBookByAuthorDataGetBookByAuthorDataAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGetBookByAuthorData_getBookByAuthor_data_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorData_getBookByAuthor_data_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGetBookByAuthorData_getBookByAuthor_data_author.serializer,
        json,
      );
}
