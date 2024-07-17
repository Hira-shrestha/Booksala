// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

abstract class GGetAllBookInput
    implements Built<GGetAllBookInput, GGetAllBookInputBuilder> {
  GGetAllBookInput._();

  factory GGetAllBookInput([void Function(GGetAllBookInputBuilder b) updates]) =
      _$GGetAllBookInput;

  int get page;
  int get limit;
  static Serializer<GGetAllBookInput> get serializer =>
      _$gGetAllBookInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetAllBookInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetAllBookInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetAllBookInput.serializer,
        json,
      );
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([void Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get firstName;
  String get lastName;
  String get email;
  String get image;
  String get password;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateUserInput.serializer,
        json,
      );
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([void Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get firstName;
  String? get lastName;
  String? get email;
  String? get image;
  String? get password;
  String get id;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateUserInput.serializer,
        json,
      );
}

abstract class GCreateBookInput
    implements Built<GCreateBookInput, GCreateBookInputBuilder> {
  GCreateBookInput._();

  factory GCreateBookInput([void Function(GCreateBookInputBuilder b) updates]) =
      _$GCreateBookInput;

  String get bookName;
  String get publishedDate;
  String get description;
  String get price;
  String get image;
  String get genre;
  static Serializer<GCreateBookInput> get serializer =>
      _$gCreateBookInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBookInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBookInput.serializer,
        json,
      );
}

abstract class GUpdateBookInput
    implements Built<GUpdateBookInput, GUpdateBookInputBuilder> {
  GUpdateBookInput._();

  factory GUpdateBookInput([void Function(GUpdateBookInputBuilder b) updates]) =
      _$GUpdateBookInput;

  String? get bookName;
  String? get publishedDate;
  String? get description;
  String? get price;
  String? get image;
  String? get genre;
  String get id;
  static Serializer<GUpdateBookInput> get serializer =>
      _$gUpdateBookInputSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBookInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBookInput.serializer,
        json,
      );
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String? value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i1.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload((serialized as String?)));
}

const Map<String, Set<String>> possibleTypesMap = {};
