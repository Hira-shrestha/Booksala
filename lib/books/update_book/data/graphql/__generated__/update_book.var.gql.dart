// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'update_book.var.gql.g.dart';

abstract class GUpdateBookVars
    implements Built<GUpdateBookVars, GUpdateBookVarsBuilder> {
  GUpdateBookVars._();

  factory GUpdateBookVars([void Function(GUpdateBookVarsBuilder b) updates]) =
      _$GUpdateBookVars;

  _i1.GUpdateBookInput get updateBookDto;
  static Serializer<GUpdateBookVars> get serializer =>
      _$gUpdateBookVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GUpdateBookVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GUpdateBookVars.serializer,
        json,
      );
}
