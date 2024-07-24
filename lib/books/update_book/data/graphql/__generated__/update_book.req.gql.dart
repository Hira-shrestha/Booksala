// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/books/update_book/data/graphql/__generated__/update_book.ast.gql.dart'
    as _i5;
import 'package:library_store/books/update_book/data/graphql/__generated__/update_book.data.gql.dart'
    as _i2;
import 'package:library_store/books/update_book/data/graphql/__generated__/update_book.var.gql.dart'
    as _i3;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'update_book.req.gql.g.dart';

abstract class GUpdateBookReq
    implements
        Built<GUpdateBookReq, GUpdateBookReqBuilder>,
        _i1.OperationRequest<_i2.GUpdateBookData, _i3.GUpdateBookVars> {
  GUpdateBookReq._();

  factory GUpdateBookReq([void Function(GUpdateBookReqBuilder b) updates]) =
      _$GUpdateBookReq;

  static void _initializeBuilder(GUpdateBookReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'UpdateBook',
    )
    ..executeOnListen = true;

  @override
  _i3.GUpdateBookVars get vars;
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
  _i2.GUpdateBookData? Function(
    _i2.GUpdateBookData?,
    _i2.GUpdateBookData?,
  )? get updateResult;
  @override
  _i2.GUpdateBookData? get optimisticResponse;
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
  _i2.GUpdateBookData? parseData(Map<String, dynamic> json) =>
      _i2.GUpdateBookData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GUpdateBookData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GUpdateBookData, _i3.GUpdateBookVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GUpdateBookReq> get serializer =>
      _$gUpdateBookReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GUpdateBookReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateBookReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GUpdateBookReq.serializer,
        json,
      );
}
