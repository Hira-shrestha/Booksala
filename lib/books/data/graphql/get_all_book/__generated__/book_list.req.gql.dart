// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:library_store/books/data/graphql/get_all_book/__generated__/book_list.ast.gql.dart'
    as _i5;
import 'package:library_store/books/data/graphql/get_all_book/__generated__/book_list.data.gql.dart'
    as _i2;
import 'package:library_store/books/data/graphql/get_all_book/__generated__/book_list.var.gql.dart'
    as _i3;
import 'package:library_store/graphql/__generated__/serializers.gql.dart'
    as _i6;

part 'book_list.req.gql.g.dart';

abstract class GBooksReq
    implements
        Built<GBooksReq, GBooksReqBuilder>,
        _i1.OperationRequest<_i2.GBooksData, _i3.GBooksVars> {
  GBooksReq._();

  factory GBooksReq([void Function(GBooksReqBuilder b) updates]) = _$GBooksReq;

  static void _initializeBuilder(GBooksReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Books',
    )
    ..executeOnListen = true;

  @override
  _i3.GBooksVars get vars;
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
  _i2.GBooksData? Function(
    _i2.GBooksData?,
    _i2.GBooksData?,
  )? get updateResult;
  @override
  _i2.GBooksData? get optimisticResponse;
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
  _i2.GBooksData? parseData(Map<String, dynamic> json) =>
      _i2.GBooksData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GBooksData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GBooksData, _i3.GBooksVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GBooksReq> get serializer => _$gBooksReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GBooksReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GBooksReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GBooksReq.serializer,
        json,
      );
}
