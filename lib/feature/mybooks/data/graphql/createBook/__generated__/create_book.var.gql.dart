// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'create_book.var.gql.g.dart';

abstract class GCreateBookVars
    implements Built<GCreateBookVars, GCreateBookVarsBuilder> {
  GCreateBookVars._();

  factory GCreateBookVars([void Function(GCreateBookVarsBuilder b) updates]) =
      _$GCreateBookVars;

  _i1.GCreateBookInput get createBookInput;
  static Serializer<GCreateBookVars> get serializer =>
      _$gCreateBookVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GCreateBookVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateBookVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GCreateBookVars.serializer,
        json,
      );
}
