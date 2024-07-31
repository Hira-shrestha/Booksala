// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'user_update.var.gql.g.dart';

abstract class GUpdateUserVars
    implements Built<GUpdateUserVars, GUpdateUserVarsBuilder> {
  GUpdateUserVars._();

  factory GUpdateUserVars([void Function(GUpdateUserVarsBuilder b) updates]) =
      _$GUpdateUserVars;

  _i1.GUpdateUserInput get updateUserInput;
  static Serializer<GUpdateUserVars> get serializer =>
      _$gUpdateUserVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateUserVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateUserVars.serializer,
        json,
      );
}
