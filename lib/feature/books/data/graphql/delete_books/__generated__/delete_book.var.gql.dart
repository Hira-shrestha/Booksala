// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'delete_book.var.gql.g.dart';

abstract class GRemoveBookVars
    implements Built<GRemoveBookVars, GRemoveBookVarsBuilder> {
  GRemoveBookVars._();

  factory GRemoveBookVars([void Function(GRemoveBookVarsBuilder b) updates]) =
      _$GRemoveBookVars;

  String get removeBookId;
  static Serializer<GRemoveBookVars> get serializer =>
      _$gRemoveBookVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GRemoveBookVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GRemoveBookVars.serializer,
        json,
      );
}
