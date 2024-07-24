// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'filter_books.var.gql.g.dart';

abstract class GFilterBookVars
    implements Built<GFilterBookVars, GFilterBookVarsBuilder> {
  GFilterBookVars._();

  factory GFilterBookVars([void Function(GFilterBookVarsBuilder b) updates]) =
      _$GFilterBookVars;

  _i1.GGetAllFilterBookInput get filterBook;
  static Serializer<GFilterBookVars> get serializer =>
      _$gFilterBookVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GFilterBookVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GFilterBookVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GFilterBookVars.serializer,
        json,
      );
}
