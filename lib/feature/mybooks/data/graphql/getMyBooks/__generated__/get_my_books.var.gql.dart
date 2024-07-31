// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'get_my_books.var.gql.g.dart';

abstract class GGetBookByAuthorVars
    implements Built<GGetBookByAuthorVars, GGetBookByAuthorVarsBuilder> {
  GGetBookByAuthorVars._();

  factory GGetBookByAuthorVars(
          [void Function(GGetBookByAuthorVarsBuilder b) updates]) =
      _$GGetBookByAuthorVars;

  _i1.GGetAllBookInput get getMyBookInput;
  static Serializer<GGetBookByAuthorVars> get serializer =>
      _$gGetBookByAuthorVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GGetBookByAuthorVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGetBookByAuthorVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GGetBookByAuthorVars.serializer,
        json,
      );
}
