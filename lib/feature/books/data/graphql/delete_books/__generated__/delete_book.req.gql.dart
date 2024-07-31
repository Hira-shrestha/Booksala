// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.ast.gql.dart'
    as _i5;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.data.gql.dart'
    as _i2;
import 'package:library_store/feature/books/data/graphql/delete_books/__generated__/delete_book.var.gql.dart'
    as _i3;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'delete_book.req.gql.g.dart';

abstract class GRemoveBookReq
    implements
        Built<GRemoveBookReq, GRemoveBookReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveBookData, _i3.GRemoveBookVars> {
  GRemoveBookReq._();

  factory GRemoveBookReq([void Function(GRemoveBookReqBuilder b) updates]) =
      _$GRemoveBookReq;

  static void _initializeBuilder(GRemoveBookReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'RemoveBook',
    )
    ..executeOnListen = true;

  @override
  _i3.GRemoveBookVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GRemoveBookData? Function(
    _i2.GRemoveBookData?,
    _i2.GRemoveBookData?,
  )? get updateResult;
  @override
  _i2.GRemoveBookData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GRemoveBookData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveBookData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GRemoveBookData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GRemoveBookData, _i3.GRemoveBookVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GRemoveBookReq> get serializer =>
      _$gRemoveBookReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GRemoveBookReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GRemoveBookReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GRemoveBookReq.serializer,
        json,
      );
}
