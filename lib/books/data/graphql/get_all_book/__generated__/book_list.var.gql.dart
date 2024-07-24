// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/schema.schema.gql.dart'
    as _i1;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i2;

part 'book_list.var.gql.g.dart';

abstract class GBooksVars implements Built<GBooksVars, GBooksVarsBuilder> {
  GBooksVars._();

  factory GBooksVars([void Function(GBooksVarsBuilder b) updates]) =
      _$GBooksVars;

  _i1.GGetAllBookInput get getAllBookInput;
  static Serializer<GBooksVars> get serializer => _$gBooksVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GBooksVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GBooksVars.serializer,
        json,
      );
}
