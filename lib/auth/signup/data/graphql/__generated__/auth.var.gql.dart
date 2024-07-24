// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'auth.var.gql.g.dart';

abstract class GCreateUserVars
    implements Built<GCreateUserVars, GCreateUserVarsBuilder> {
  GCreateUserVars._();

  factory GCreateUserVars([void Function(GCreateUserVarsBuilder b) updates]) =
      _$GCreateUserVars;

  _i1.GCreateUserInput get createUserInput;
  static Serializer<GCreateUserVars> get serializer =>
      _$gCreateUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateUserVars.serializer,
        json,
      );
}

abstract class GUploadImageVars
    implements Built<GUploadImageVars, GUploadImageVarsBuilder> {
  GUploadImageVars._();

  factory GUploadImageVars([void Function(GUploadImageVarsBuilder b) updates]) =
      _$GUploadImageVars;

  _i1.GUpload get image;
  static Serializer<GUploadImageVars> get serializer =>
      _$gUploadImageVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUploadImageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUploadImageVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUploadImageVars.serializer,
        json,
      );
}
