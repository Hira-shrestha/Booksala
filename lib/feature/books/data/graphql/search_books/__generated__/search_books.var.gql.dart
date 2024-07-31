// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'search_books.var.gql.g.dart';

abstract class GSearchBookVars
    implements Built<GSearchBookVars, GSearchBookVarsBuilder> {
  GSearchBookVars._();

  factory GSearchBookVars([void Function(GSearchBookVarsBuilder b) updates]) =
      _$GSearchBookVars;

  _i1.GGetAllSearchBookInput get searchBook;
  static Serializer<GSearchBookVars> get serializer =>
      _$gSearchBookVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GSearchBookVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchBookVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GSearchBookVars.serializer,
        json,
      );
}
